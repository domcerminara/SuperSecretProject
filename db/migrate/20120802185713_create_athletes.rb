class CreateAthletes < ActiveRecord::Migration
  def self.up
    create_table :athletes do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.integer :team_id
      t.timestamps
    end
  end

  def self.down
    drop_table :athletes
  end
end
