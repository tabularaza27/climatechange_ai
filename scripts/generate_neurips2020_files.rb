require 'pdf/reader'
require 'roo'
require 'roo-xls'
require 'yaml'
require 'set'
require 'fileutils'
require 'csv'

workshop = 'neurips2020'
submissions = "raw_workshop_files/#{workshop}/Papers.xml"
cameraready = "raw_workshop_files/#{workshop}/CameraReadySubmissions"

sl_link_file = "raw_workshop_files/#{workshop}/slideslive_links.csv"
sl_id_file = "raw_workshop_files/#{workshop}/slideslive_unique_ids.csv"
sl_unique_ids = Set.new(File.read(sl_id_file).strip.split("\n").map(&:strip))

sl_to_speaker = {}

titles_to_slideslive = CSV.read(sl_link_file, headers: true).each_with_object({}) do |row, h|
  next unless sl_unique_ids.include?(row['Unique ID'])
  t = row['Title'].sub('Spotlight: ', '')
  sl = row['SlidesLive link'].strip.split("/").last
  h[t.strip.downcase] = sl
  speaker = row['Speakers'].to_s.strip.split(', ').first.sub('Climate Change Ai', '')
  if speaker != ''
    sl_to_speaker[sl] = speaker
  end
end

cmt_to_speaker = {}

CSV.read("raw_workshop_files/#{workshop}/spotlights.tsv", col_sep: "\t").each do |row|
  cmt_to_speaker[row[0].to_i] = row[3].strip
end

sess_file = "raw_workshop_files/#{workshop}/poster_sessions.csv"

cmt_ids_to_sessions = CSV.read(sess_file, headers: true).each_with_object({}) do |row, h|
  sessions = row['Which poster session(s) will you present at?'].to_s.gsub(/\s\([^\)]+\)/, '').split(", ")
  h[row['CMT Paper ID'].to_i] = sessions
end

papers = []
export = Roo::Excel2003XML.new(submissions)
sheet = export.sheet(0)
parsed = sheet.parse(header_search: [/Paper ID/])
parsed.each do |p|
  next unless p['Status'].include?('Accept')
  raise unless p["Q1 (Track)"]

  fields = [
    'Paper ID', 'Paper Title', 'Abstract', 'Q1 (Track)',
    'Primary Contact Author Name',
    'Primary Contact Author Email',
    'Status', 'Primary Subject Area',
    'Secondary Subject Areas',
    'Author Names',
    'Author Emails',
    'Authors'
  ]
  paper_data = {}

  fields.each do |field|
    paper_data[field.downcase.gsub(/[^\w]+/, '_').gsub(/_+$/,'')] = p[field]
  end

  if sl_id = titles_to_slideslive[p['Paper Title'].downcase.strip]
    cmt_id = p['Paper ID'].to_i
    unless cmt_id == 142
      paper_data['slideslive_id'] = sl_id
      paper_data['slideslive_speaker'] = cmt_to_speaker[cmt_id] || sl_to_speaker[sl_id]
    end
  else
    puts "couldn't find slides for #{p['Paper Title']}"
  end

  paper_data['cmt_id'] = paper_data.delete('paper_id').to_i

  paper_data['poster_sessions'] = cmt_ids_to_sessions[paper_data['cmt_id']] || []

  paper_data['is_spotlight'] = p['Status'].include?('Spotlight')

  # Manual formatting fixes :/
  paper_data['authors'] = paper_data['authors'].
    gsub(/\(\s+/, '(').
    gsub( /\s+\)/, ')').
    gsub("*", "")

  papers << paper_data
end

papers.sort_by! { |p| [p['q1_track'], p['cmt_id']] }
papers.each_with_index do |p,i|
  p['id'] = i+1
  p['prev_paper_id'] = i if i > 0
  p['next_paper_id'] = i+2 if i < papers.size-1
end

def aspect_ratio(pdf)
  return 0.5 if pdf =~ /paper(?:_\d+)?\.pdf$/
  return 1.5 if pdf =~ /slides(?:_\d+)?\.pdf$/

  reader = PDF::Reader.new(pdf)
  page = reader.pages.first
  bbox   = page.attributes[:MediaBox]
  width  = bbox[2] - bbox[0]
  height = bbox[3] - bbox[1]
  return width/height.to_f
rescue
  puts "Error getting aspect ratio for #{pdf}"
end

papers.each do |p|
  pdfs = Dir.glob("#{cameraready}/#{p['cmt_id']}\\\\*.pdf")
  case pdfs.length
  when 1
    pdf = pdfs.first
    ar = aspect_ratio(pdf)
    if ar < 1
      paper_pdf = pdf
      slides_pdf = nil
    else
      slides_pdf = pdf
      paper_pdf = nil
    end
  when 2
    r1, r2 = pdfs.map { |pdf| aspect_ratio(pdf) }
    if r2 > r1
      paper_pdf = pdfs.first
      slides_pdf = pdfs.last
    elsif r2 < r1
      paper_pdf = pdfs.last
      slides_pdf = pdfs.first
    else
      puts r1
      puts r2
      raise "Cannot determine which pdf is which for #{p}"
    end
  end

  paper_dir = "papers/#{workshop}/#{p['id']}"
  FileUtils.mkdir_p(paper_dir)

  if paper_pdf
    paper_path = "#{paper_dir}/paper.pdf"
    FileUtils.cp(paper_pdf, paper_path)
    p['paper_path'] = "/#{paper_path}"
  end

  if slides_pdf
    slides_path = "#{paper_dir}/slides.pdf"
    FileUtils.cp(slides_pdf, slides_path)
    p['slides_path'] = "/#{slides_path}"
  end

  front_matter = {
    "layout" => "paper",
    "paper_index" => p['id']-1,
    "title" => "Climate Change AI - NeurIPS 2020 Accepted Work",
    "description" => p['paper_title'],
    "workshop_key" => "#{workshop}_papers"
  }

  File.open("#{paper_dir}.html", "w") do |f|
    f.write(YAML.dump(front_matter)+"---")
  end
end

File.open("_data/#{workshop}_papers.yml", "w") do |f|
  f.write(YAML.dump(papers))
end
