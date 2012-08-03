class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.datetime :date
      t.integer :winner
      t.integer :loser
      t.integer :home_team_cups
      t.integer :away_team_cups

      t.timestamps
    end
  end
end
