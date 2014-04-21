json.array!(@teams) do |team|
  json.extract! team, :id, :league, :full_team_name, :short_team_name, :city, :state, :twitter_handle
  json.url team_url(team, format: :json)
end
