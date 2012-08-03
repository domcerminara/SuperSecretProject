class Team < ActiveRecord::Base
  attr_accessible :house_number, :division_id, :name, :street, :house_id, :wins, :losses, :cup_differential

  has_many :athletes
  belongs_to :house
  has_many :matches
  belongs_to :division

  validates_presence_of :house_number, :name, :street, :house_id

end
