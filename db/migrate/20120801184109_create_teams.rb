class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :house_number
      t.string :street
      t.integer :house_id
      t.integer :wins
      t.integer :loses
      t.integer :cup_differential

      t.timestamps
    end
  end
end
