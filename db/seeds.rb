# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.delete_all

CSV.foreach("#{Rails.root}/db/seeds/teams.csv") do |row|
  Team.create!(league: row[0], full_team_name: row[1], short_team_name: row[2], city: row[3], state: row[4], twitter_handle: row[5])
end