class AddLastNameToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :last_name, :string
  end
end
