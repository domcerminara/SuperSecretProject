class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.integer :team_id
      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
