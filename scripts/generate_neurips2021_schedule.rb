require 'yaml'
require 'csv'

workshop = 'neurips2021'
schedule_csv = "raw_workshop_files/#{workshop}/schedule.csv"

schedule = []

entry = nil

def munge(s)
  s.downcase.gsub(/[^\w]/,'')
end

papers = YAML.load(File.read("_data/neurips2021_papers.yml")).each_with_object({}) do |paper,h|
  h[munge(paper['paper_title'])] = paper
end


CSV.read(schedule_csv, headers: true).each do |row|
  next if entry.nil? && row['Title'].nil?

  if row['Start time'].to_s.length > 0
    unless entry.nil?
      schedule << entry
    end

    entry = {}
    if row['Title'].to_s.start_with?('Spotlight:')
      entry['desc'] = "Spotlight Presentations"
    else
      entry['desc'] = row['Title']
    end

    entry['utc1'] = {
      'year' => 2021,
      'month' => 12,
      'day' => 14,
      'hour' => (row['Start time'].split(':')[0].to_i + 5) % 23,
      'minute' => row['Start time'].split(':')[1].to_i,
    }
  end

  if entry && entry['desc'] == "Spotlight Presentations"
    entry['subrows'] ||= []

    if p = papers[munge(row['Title'].to_s.sub('Spotlight: ',''))]
      entry['subrows'] << { 'paper_id' => p['id'] }
    else
      raise "cant find #{row['Title']}"
    end
  end

  if row['End time'].to_s.length > 0
    entry['utc2'] = {
      'year' => 2021,
      'month' => 12,
      'day' => 14,
      'hour' => (row['End time'].split(':')[0].to_i + 5) % 23,
      'minute' => row['End time'].split(':')[1].to_i,
    }
  end
end

schedule << entry

File.write('_data/neurips2021_schedule.yml', YAML.dump(schedule))
