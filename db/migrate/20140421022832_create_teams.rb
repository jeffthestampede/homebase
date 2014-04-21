class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :league
      t.string :full_team_name
      t.string :short_team_name
      t.string :city
      t.string :state
      t.string :twitter_handle

      t.timestamps
    end
  end
end
