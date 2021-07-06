require 'yaml'

Dir.glob('papers/**/*.html').each do |f|
  data = YAML.load(File.read(f))
  desc = data['description']
  data['description'] = data['title']
  data['title'] = desc
  File.write(f, "#{data.to_yaml}---")
end
