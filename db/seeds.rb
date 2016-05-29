# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

League.delete_all
Team.delete_all
Player.delete_all
Roster.delete_all
User.delete_all

nba_east = League.create(:name => "Eastern Conference of the NBA", :prize => 100)
nba_west = League.create(:name => "Western Conference of the NBA", :prize => 100)
wnba = League.create(:name => "Women's National Basketball Association", :prize => 100)

user1 = User.create(:username => 'home',:password => 'nba5')
user2 = User.create(:username => 'away',:password => 'nba6')

small = Team.new
small.name = "Small Ball"
small.rank = 2
small.user_id = user1.id
small.league_id = nba_east.id
small.save

big = Team.new
big.name = "Dominating"
big.rank = 1
big.user_id = user2.id
big.league_id = nba_east.id
big.save

huge = Team.new
huge.name = "The 7 Footers"
huge.rank = 1
huge.user_id = user2.id
huge.league_id = nba_west.id
huge.save

fem = Team.new
fem.name = "Who Run the World"
fem.rank = 1
fem.user_id = user2.id
fem.league_id = wnba.id
fem.save

curry = Player.new
curry.name = "Stephen Curry"
curry.image_url = "curry.jpg"
curry.position = "PG"
curry.ppg = 30
curry.fg = 52
curry.save

westbrook = Player.new
westbrook.name = "Russell Westbrook"
westbrook.image_url = "westbrook.jpg"
westbrook.position = "PG"
westbrook.ppg = 26
westbrook.fg = 48
westbrook.save

lebron = Player.new
lebron.name = "LeBron James"
lebron.image_url = "lebron.jpg"
lebron.position = "SF"
lebron.ppg = 26
lebron.fg = 47
lebron.save

durant = Player.new
durant.name = "Kevin Durant"
durant.image_url = "durant.jpg"
durant.position = "SF"
durant.ppg = 28
durant.fg = 48
durant.save

cousins = Player.new
cousins.name = "DeMarcus Cousins"
cousins.image_url = "cousins.jpg"
cousins.position = "C"
cousins.ppg = 26
cousins.fg = 51
cousins.save

davis = Player.new
davis.name = "Anthony Davis"
davis.image_url = "davis.jpg"
davis.position = "C"
davis.ppg = 23
davis.fg = 54
davis.save

miller = Player.new
miller.name = "Cheryl Miller"
miller.image_url = "miller.jpg"
miller.position = "C"
miller.ppg = 32
miller.fg = 56
miller.save

swoopes = Player.new
swoopes.name = "Sheryl Swoopes"
swoopes.image_url = "swoopes.jpg"
swoopes.position = "C"
swoopes.ppg = 23
swoopes.fg = 54
swoopes.save

Roster.create(:team_id => small.id,:player_id => curry.id)
Roster.create(:team_id => small.id,:player_id => westbrook.id)
Roster.create(:team_id => big.id,:player_id => lebron.id)
Roster.create(:team_id => big.id,:player_id => durant.id)
Roster.create(:team_id => huge.id,:player_id => cousins.id)
Roster.create(:team_id => huge.id,:player_id => davis.id)
Roster.create(:team_id => fem.id,:player_id => miller.id)
Roster.create(:team_id => fem.id,:player_id => swoopes.id)

print "There are now #{Team.count} teams in the database.\n"
print "There are now #{Player.count} players in the database.\n"
print "There are now #{User.count} users in the database.\n"