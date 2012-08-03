class Game < ActiveRecord::Base
  attr_accessible :cup_differential
  belongs_to :match
  
end
