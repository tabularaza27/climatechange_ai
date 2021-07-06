require 'pdf/reader'
require 'roo'
require 'roo-xls'
require 'yaml'
require 'fileutils'
require 'csv'

submissions = 'raw_workshop_files/iclr2020/Papers.xml'
cameraready = 'raw_workshop_files/iclr2020/CameraReadySubmissions'
workshop = 'iclr2020'

zoom_file = "_data/#{workshop}_zoom.yml"
zoom_info = YAML.load(File.read(zoom_file))

slideslive_mapping_file = "raw_workshop_files/iclr2020/iclr_slideslive_mapping.csv"

cmt_to_slideslive = {}

CSV.read(slideslive_mapping_file, headers: true).each do |row|
  if row["CMT ID"]
    cmt_to_slideslive[row["CMT ID"].to_i] = row["SlidesLive link (not yet live)"].split("/").last
  end
end

export = Roo::Excel2003XML.new(submissions)
sheet = export.sheet(0)
parsed = sheet.parse(header_search: [/Paper ID/])
papers = []
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

  # Manual formatting fixes :/
  paper_data['authors'] = paper_data['authors'].
    gsub(/\(\s+/, '(').
    gsub( /\s+\)/, ')').
    gsub("*", "")

  paper_data['cmt_id'] = paper_data.delete('paper_id').to_i

  if zoom_info
    zoom_info[paper_data['cmt_id']].each do |k,v|
      paper_data[k] = v
    end
  end

  if slideslive = cmt_to_slideslive[paper_data['cmt_id']]
    paper_data['slideslive_id'] = slideslive
  end

  papers << paper_data
end

papers.sort_by! { |p| [p['q1_track'], p['cmt_id']] }
papers.each_with_index do |p,i|
  p['id'] = i+1
  p['prev_paper_id'] = i if i > 0
  p['next_paper_id'] = i+2 if i < papers.size-1
  p['rocketchat_channel'] = "https://iclr.rocket.chat/channel/climatechange_poster_#{i+1}"
end

def aspect_ratio(pdf)
  reader = PDF::Reader.new(pdf)
  page = reader.pages.first
  bbox   = page.attributes[:MediaBox]
  width  = bbox[2] - bbox[0]
  height = bbox[3] - bbox[1]
  return width/height.to_f
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
    "title" => "Climate Change AI - ICLR 2020 Accepted Work",
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
