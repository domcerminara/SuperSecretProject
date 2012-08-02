class Team < ActiveRecord::Base
  attr_accessible :house_number, :name, :street

  has_many :players
  belongs_to :house
end
