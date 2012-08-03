class Athlete < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :team_id

  belongs_to :team
  has_one :house, :through => :team

  validates_presence_of :name
  validates_numericality_of :phone
  validates_length_of :phone, :is => 10, :wrong_length => "number is not valid."
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i

end
