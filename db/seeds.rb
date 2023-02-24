puts "Seeding users..."
user1 = User.create(name: 'Kevin Mak', username: "kevin", password: "1234", email: "abc@abc.com")
user2 = User.create(name: 'John Smith', username: "john", password: "1234", email: "def@def.com")

puts "Seeding games..."
game1 = Game.create(team1_name: "lakers", team1_score: 0, team1_status: false, team2_name: "hornets", team2_score: 0, team2_status: false, sports: "basketball")
game2 = Game.create(team1_name: "heats", team1_score: 0, team1_status: false, team2_name: "bucks", team2_score: 0, team2_status: false, sports: "basketball")

# puts "Seeding bets..."
# bet1 = Bet.create(user_id: user1.id, game_id: game1.id, tansaction: 1, team1_odds: 3.5, team2_odds: 0.5, payout: 1000)
# bet2 = Bet.create(user_id: user2.id, game_id: game2.id, tansaction: 2, team1_odds: 2.5, team2_odds: 1.5, payout: 2000)

