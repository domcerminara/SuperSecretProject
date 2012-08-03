class AddDefaultDivisions < ActiveRecord::Migration
  def up
    defaulta = Division.new
    defaulta.name = "North"
    defaulta.save!
    defaultb = Division.new
    defaultb.name = "South"
    defaultb.save!
    defaultc = Division.new
    defaultc.name = "East"
    defaultc.save!
    defaultd = Division.new
    defaultd.name = "West"
    defaultd.save!
  end

  def down
  end
end
