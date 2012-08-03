class Team < ActiveRecord::Base
  attr_accessible :house_number, :name, :street, :house_id

  has_many :athletes
  belongs_to :house
  has_many :matches

end
