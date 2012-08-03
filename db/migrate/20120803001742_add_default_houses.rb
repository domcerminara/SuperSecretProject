class AddDefaultHouses < ActiveRecord::Migration
  def up
    defaulta = House.new
    defaulta.name = "Phi Kappa Theta"
    defaultb = House.new
    defaultb.name = "Pi Kappa Alpha" 
    defaultc = House.new
    defaultc.name = "Beta Theta Pi" 
    defaultd = House.new
    defaultd.name = "Sigma Phi Epsilon"
    defaulte = House.new
    defaulte.name = "Kappa Sigma"
    defaultf = House.new
    defaultf.name = "Sigma Nu"
    defaultg = House.new
    defaultg.name = "Alpha Epsilon Pi"
    defaulth = House.new
    defaulth.name = "Kappa Delta Rho"
    defaulti = House.new
    defaulti.name = "Theta Xi"
    defaultj = House.new
    defaultj.name = "Sigma Chi"
    defaultk = House.new
    defaultk.name = "Delta Tau Delta"
    defaultl = House.new
    defaultl.name = "Sigma Alpha Epsilon"
    defaultm = House.new
    defaultm.name = "Delta Upsilon"
    defaulta.save!
    defaultb.save!
    defaultc.save!
    defaultd.save!
    defaulte.save!
    defaultf.save!
    defaultg.save!
    defaulth.save!
    defaulti.save!
    defaultj.save!
    defaultk.save!
    defaultl.save!
    defaultm.save!
  end

  def down
  end
end
