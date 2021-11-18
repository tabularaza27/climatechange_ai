require 'yaml'

%w(icml2019 neurips2019 iclr2020 neurips2020 neurips2021).each do |w|
  yaml_file = "_data/#{w}_papers.yml"
  current = YAML.load(File.read(yaml_file))
  new_data = current.map do |p|
    p['subject_areas'] = [p['primary_subject_area']]
    if p['secondary_subject_areas'].size > 0
      p['subject_areas'] += p['secondary_subject_areas'].split('; ')
    end
    p['subject_areas'] = p['subject_areas'].map{|s| s.split(' -> ').last}.uniq
    p
  end

  File.write(yaml_file, new_data.to_yaml)

end
