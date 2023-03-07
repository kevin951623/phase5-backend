class TeamWithOddsSerializer < ActiveModel::Serializer
    attributes :team1_name, :team2_name, :team1_score, :team2_score
    has_many :bets

  
end