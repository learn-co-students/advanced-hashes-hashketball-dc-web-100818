def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {
          player: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        {
          player: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(playa)
 game_hash.collect do |location, data|
   players = data[:players]
   players.collect do |x|
    if playa == x[:player]
      return x[:points]
    end
  end
   end
  end

def shoe_size(playa)
  game_hash.collect do |location, data|
    players = data[:players]
    players.collect do |x|
      if playa == x[:player]
        return x[:shoe]
    end
  end
 end
end

def team_colors(team)
  game_hash.collect do |location, data|
  if team == data[:team_name]
    return data[:colors]
  end
 end
end

def team_names
 game_hash.collect do |location, data|
   data[:team_name]
 end
  end

def player_numbers(team)
  new = []
  game_hash.collect do |location, data|
  if team == data[:team_name]
    team_p = data[:players]
    team_p.each do |x|
     new << x[:number]
  end
 end
end
new
end

def player_stats(playa)
  game_hash.collect do |location, data|
  players = data[:players]
  players.collect do |x|
    if playa == x[:player]
       x.delete(:player)
       return x
  end
 end
end
end

def big_shoe_rebounds
  biggest_shoes = 0
  rebounds = 0
  game_hash.each do |location, data|
    players = data[:players]
    players.each do |x|
      if x[:shoe] > biggest_shoes
        biggest_shoes = x[:shoe]
        rebounds = x[:rebounds]
      end
    end
  end
  rebounds
end
