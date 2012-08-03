class Match < ActiveRecord::Base
  attr_accessible :date, :opponent
  belongs_to :team
  has_many :games

end
