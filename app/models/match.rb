class Match < ActiveRecord::Base
  attr_accessible :date, :home_team_id, :away_team_id, :winner, :loser, :home_team_cups, :away_team_cups
  belongs_to :team

  validates_presence_of :date, :home_team_id, :away_team_id

  def home_team
    Team.find(home_team_id)
  end

  def away_team
    Team.find(away_team_id)
  end

  def losing_team
    Team.find(loser)
  end

  def winning_team
    Team.find(winner)
  end

  def updateStandings
    Team.find(winner).wins = 1
    Team.find(loser).loses = 1
  end

end
