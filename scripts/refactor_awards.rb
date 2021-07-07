require 'yaml'

%w(icml2019 neurips2019 iclr2020 neurips2020).each do |w|
  yaml_file = "_data/#{w}_papers.yml"
  current = YAML.load(File.read(yaml_file))
  new_data = current.map do |p|
    p['award'] = "Honorable Mention" if p.delete('is_honorable_mention')
    p['award'] = "Best Proposal Award" if p.delete('is_best_proposal')
    p['award'] = "Best Paper Award" if p.delete('is_best_paper')
    p
  end

  File.write(yaml_file, new_data.to_yaml)
end
