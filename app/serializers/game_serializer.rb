class GameSerializer < ActiveModel::Serializer
  attributes :team1_name, :team1_score, :team1_odds, :team2_odds, :team2_name, :team2_score, :game_status, :winner, :sports
end
