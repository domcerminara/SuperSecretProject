class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :house_number
      t.string :street

      t.timestamps
    end
  end
end
