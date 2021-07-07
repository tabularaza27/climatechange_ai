require 'pdf/reader'
require 'roo'
require 'roo-xls'
require 'yaml'
require 'set'
require 'fileutils'
require 'csv'

workshop = 'icml2019'
submissions = "raw_workshop_files/#{workshop}/Papers.xml"
yaml_file = "_data/#{workshop}_papers.yml"
papers = []
export = Roo::Excel2003XML.new(submissions)
parsed = (
  export.sheet(0).parse(header_search: [/Paper ID/]) +
  export.sheet(1).parse(header_search: [/Paper ID/]) +
  export.sheet(2).parse(header_search: [/Paper ID/]))
current = YAML.load(File.read(yaml_file))

titles_to_cmt = {}
authors_to_cmt = {}

parsed.each do |p|
  titles_to_cmt[p['Paper Title'].strip.downcase] = p

  authors = p['Authors'].strip.
    gsub(/\(\s+/, '(').
    gsub( /\s+\)/, ')').
    gsub("*", "").downcase

  authors_to_cmt[authors] = p
end

new_data = current.map do |p|
  cmt = titles_to_cmt[p['paper_title'].strip.downcase]
  unless cmt
    cmt = authors_to_cmt[p['authors'].strip.downcase]

    unless cmt
      puts "can't find paper by title for #{p['paper_title']}"
      next
    end
  end


  p['cmt_id'] = cmt['Paper ID'].to_i
  p['primary_subject_area'] = cmt["Primary Subject Area"]
  p['secondary_subject_areas'] = cmt["Secondary Subject Areas"]
  p
end

File.write(yaml_file, new_data.to_yaml)
