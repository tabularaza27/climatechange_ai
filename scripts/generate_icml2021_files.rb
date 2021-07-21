require 'pdf/reader'
require 'roo'
require 'roo-xls'
require 'yaml'
require 'set'
require 'fileutils'
require 'csv'

workshop = 'icml2021'
submissions = "raw_workshop_files/#{workshop}/Papers.xml"
cameraready = "raw_workshop_files/#{workshop}/CameraReadys"

sl_link_file = "raw_workshop_files/#{workshop}/slideslive_links.csv"
#sl_id_file = "raw_workshop_files/#{workshop}/slideslive_unique_ids.csv"
#sl_unique_ids = Set.new(File.read(sl_id_file).strip.split("\n").map(&:strip))

cmt_to_sl_id = {}
cmt_to_speaker = {}

CSV.read(sl_link_file, headers: true).each do |row|
  if %w(finished checked).include?(row['Video Status'])
    cmt_id = row['Paper ID'].to_i
    cmt_to_sl_id[cmt_id] = row['SlidesLive Link'].strip.split("/").last
    cmt_to_speaker[cmt_id] = row['Author'].strip
  end
end

#cmt_to_speaker = {}
#
#CSV.read("raw_workshop_files/#{workshop}/spotlights.tsv", col_sep: "\t").each do |row|
#  cmt_to_speaker[row[0].to_i] = row[3].strip
#end

sess_file = "raw_workshop_files/#{workshop}/poster_sessions.csv"

cmt_to_session = CSV.read(sess_file, headers: true).each_with_object({}) do |row, h|
  sessions = row['Assigned Session'].to_s.strip
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

  paper_data['paper_title'] = paper_data['paper_title'].strip.squeeze(" ")

  if p['Status'] == "Accept (Paper --> Proposal)"
    paper_data['q1_track'] = 'Proposal'
  end

  paper_data['q1_track'] += 's'

  cmt_id = paper_data.delete('paper_id').to_i

  paper_data['cmt_id'] = cmt_id

  if sl_id = cmt_to_sl_id[cmt_id]
    paper_data['slideslive_id'] = sl_id
    paper_data['slideslive_speaker'] = cmt_to_speaker[cmt_id]
  else
    puts "couldn't find slideslive for #{p['Paper Title']}"
  end

  if sess = cmt_to_session[cmt_id]
    paper_data['poster_sessions'] = [sess]
  end

  paper_data['is_spotlight'] = p['Status'].include?('Spotlight')

  # Manual formatting fixes :/
  paper_data['authors'] = paper_data['authors'].
    gsub(/\(\s+/, '(').
    gsub( /\s+\)/, ')').
    gsub("*", "")

  paper_data['primary_subject_area'] = p["Primary Subject Area"]
  paper_data['secondary_subject_areas'] = p["Secondary Subject Areas"]
  paper_data['subject_areas'] = [paper_data['primary_subject_area']]
  if paper_data['secondary_subject_areas'].size > 0
    paper_data['subject_areas'] += paper_data['secondary_subject_areas'].split('; ')
  end
  paper_data['subject_areas'] = paper_data['subject_areas'].map{|s| s.split(' -> ').last}.uniq

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

  ['Beamer', 'PowerPoint'].each do |program|
    return 1.5 if (reader.info || {})[:Creator].to_s.include?(program)
  end

  page = reader.pages.first
  bbox   = page.attributes[:MediaBox]
  width  = bbox[2] - bbox[0]
  height = bbox[3] - bbox[1]
  res = width/height.to_f
  puts res
  return res
rescue
  require 'debug'
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
    "title" => p['paper_title'],
    "description" =>  "Climate Change AI - ICML 2021 Accepted Work",
    "workshop_key" => "#{workshop}_papers"
  }

  File.open("#{paper_dir}.html", "w") do |f|
    f.write(YAML.dump(front_matter)+"---")
  end
end

File.open("_data/#{workshop}_papers.yml", "w") do |f|
  f.write(YAML.dump(papers))
end
