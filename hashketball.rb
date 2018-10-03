require "pry"

def game_hash
{
:home => {:team_name => "Brooklyn Nets", 
        :colors => ["Black", "White"], 
        :players => {
"Alan Anderson" => {
:number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},

"Reggie Evans" => {
:number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},

"Brook Lopez" => {
:number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},

"Mason Plumlee" => {
:number => 1, :shoe => 19, :points => 26, :rebounds => 12, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},

"Jason Terry" => {
:number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
 }
},

away: {:team_name => "Charlotte Hornets", 
       :colors => ["Turquoise", "Purple"], 
       :players => {
"Jeff Adrien" => {
:number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},

"Bismak Biyombo" => {
:number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 7, :blocks => 15, :slam_dunks => 10},

"DeSagna Diop" => {
:number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},

"Ben Gordon" => {
:number => 8, :shoe => 15, :points => 33, :rebounds => 3 , :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},

"Brendan Haywood" => {
:number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 22, :blocks => 5, :slam_dunks => 12}
  }
 }
}
end



#return number of points scored for specific player
#location = home or away
	#team_data = team name, colors, players
#team data specifying players
	#name = player 
	#specs = number, shoe, points, rebounds, assi ssts, steals, 		blocks, slam dunks keys

def num_points_scored(players_name)
 game_hash.each do |location, team_data|	
  team_data[:players].each do |attribute, data|
   if attribute == players_name
   return data[:points]
   end 
  end
 end
end



def shoe_size(players_name)
 game_hash.each do |location, team_data|
  team_data[:players].each do |attribute, data|
   if attribute == players_name
   return data[:shoe]
   end
  end
 end
end


def team_colors(team_name)#didit!
game_hash.each do |location, team_data|
if team_data[:team_name] == team_name
return team_data[:colors]
end
end
end

#said to 'operate' on

def team_names#didit!
game_hash.map do |location, team_data|
team_data[:team_name]
end
end


def player_numbers(team_name)#didit!
jersey_numbers = []
game_hash.each do |location, team_data|
if game_hash[location].values.include?(team_name)
team_data.each do |attribute, data|
if data.class == Hash
data.each do |data_item, stat|
stat.each do |jers, num|
if jers == :number
jersey_numbers.push(num.to_i)
end
end
end
end
end
end
end
return jersey_numbers
end


def player_stats(player_name)
 game_hash.each do |location, team_data|
  team_data[:players].each do |attribute, data|
    if attribute == player_name
    	#binding.pry
    return data
    end
  end 
 end
end
player_stats("Jeff Adrien")

def big_shoe_rebounds#didit!
biggest_shoes = ""
shoe_size = 0
game_hash.each do |location, team_data|
team_data.each do |attributes, data|
if data.class == Hash
data.each do |data_item, stat|
stat.each do |shoe, num|
if shoe == :shoe
if num > shoe_size
shoe_size = num
biggest_shoes = data_item
end
end
end
end 
return game_hash[location][attributes][biggest_shoes][:rebounds]
end
end
end
end

