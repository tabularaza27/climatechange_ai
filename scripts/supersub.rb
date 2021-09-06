files = `ack -l "#{ARGV[0]}" --ignore-dir=_site`.split("\n")

files.each do |f|
  old_text = File.read(f)
  new_text = old_text.gsub(ARGV[0], ARGV[1])
  File.write(f, new_text)
end
