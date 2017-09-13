# Write your code here!
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
          player_name: "Jason Terry",
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
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
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
def num_points_scored(player_guy)
  game_hash.each do |location, team|
    team.each do |attribute, name|
      if attribute == :players
        name.each do |player|
          if player[:player_name] == player_guy
            return player[:points]
          end
        end
      end
    end
  end
end

def shoe_size(player_guy)
  game_hash.each do |location, team|
    team.each do |attribute, name|
      if attribute == :players
        name.each do |player|
          if player[:player_name] == player_guy
            return player[:shoe]
          end
        end
      end
    end
  end
end

def team_colors(which_team)
  game_hash.each do |location, team|
    if team[:team_name] == which_team
      return team[:colors]
    end
  end
end

def player_numbers(team_name)
  numbers = []
  game_hash.each do |location, team|
    if team[:team_name] == team_name
    team.each do |attribute, name|
      if attribute == :players
        name.each do |player|

            numbers << player[:number]
          end
        end
      end
end
  end
  numbers
  end

def player_stats(name)
  stats_hash = {}
  game_hash.collect do |area, team|
    team.each do |attribute, data|
      if attribute == :players
        game_hash[area][attribute].each do |player|
          if player[:player_name] == name
            stats_hash = player.delete_if do |k, v|
              k == :player_name
          end
        end
      end
    end
  end
end
stats_hash
end

def team_names
  game_hash.collect do |area, team|
    team[:team_name]
  end
end

def big_shoe_rebounds
  big_shoe = 0
  number_rebounds = 0
game_hash.each do |team, game_data|
  game_data[:players].each do |player|
    if player[:shoe] > big_shoe
      big_shoe = player[:shoe]
      number_rebounds = player[:rebounds]
    end
  end
end
number_rebounds
end

def players
  home_players = []
  away_players = []
  home_players = game_hash.fetch(:home).fetch(:players)
  away_players = game_hash.fetch(:away).fetch(:players)
  home_players + away_players
end

#def what_player (name)
#  players.find {}

#def num_points_scored(name)
#def num_points_scored(name)
#  game_hash.each do |location, team_data|
  #  if name == game_hash[player_name]
  #    location = game_hash[player_name]
    #  location.each do |
