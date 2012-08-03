class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :opponent
      t.datetime :date
      t.integer :team_id

      t.timestamps
    end
  end
end
