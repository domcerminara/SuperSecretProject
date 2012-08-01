class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :opponent
      t.datetime :date

      t.timestamps
    end
  end
end
