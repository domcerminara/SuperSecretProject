class AddDefaultUser < ActiveRecord::Migration
  def up
    default = Player.new
    default.email = "dompkt2013@gmail.com"
    default.password = "test123"
    default.password_confirmation = "test123"
    default.save! 
  end

  def down
  end
end
