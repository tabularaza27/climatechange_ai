require 'csv'
require 'yaml'
require 'json'

workshop = 'icml2021'
schedule_file = "raw_workshop_files/#{workshop}/schedule.csv"

schedule = []

def time_info(t)
  et_hour, minute = t.split(":").map(&:to_i)
  {
    year: 2021,
    month: 7,
    day: 23,
    hour: et_hour + 4,
    minute: minute
  }
end

CSV.read(schedule_file, headers: true).each do |row|
  schedule << { desc: row['Title'] }.
    merge(utc1: time_info(row['Start time'])).
    merge(utc2: time_info(row['End time']))
end

schedule = JSON.parse(JSON.dump(schedule))

File.write("_data/#{workshop}_schedule.yml", YAML.dump(schedule))
