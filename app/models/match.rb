class Match < ActiveRecord::Base
  attr_accessible :date, :home_team_id, :away_team_id, :winner, :loser, :home_team_cups, :away_team_cups
  belongs_to :team

  validates_presence_of :date, :home_team_id, :away_team_id


end
