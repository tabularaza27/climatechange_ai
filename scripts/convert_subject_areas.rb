require 'yaml'
require 'json'

conversion_table = JSON.parse(File.read(File.join(__dir__, 'tag_conversion_table.json')))

%w(icml2019 neurips2019 iclr2020 neurips2020).each do |w|
  yaml_file = "_data/#{w}_papers.yml"
  current = YAML.load(File.read(yaml_file))
  new_data = current.map do |p|
    p['condensed_subject_areas'] = p['subject_areas'].map {|s| conversion_table.fetch(s, s) }.uniq
    p
  end

  File.write(yaml_file, new_data.to_yaml)
end
