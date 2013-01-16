require_relative 'game_turn'
require_relative 'player'
require_relative 'treasure_trove'
module Dand
class Game

def initialize(title)

@title = title.capitalize
@players = []
end
def add_player(players)

	@players << players
end
def remove_player(players)

  @players >> players
end
 
def list
"This game is called #{@title}"
end

def load_players(filename)
File.readlines(filename).each do |line|
add_player(Dand::Player.from_csv(line))
end
end

def save(to_file = "high_scores.txt")
File.open(to_file, 'w') do |file|
file.puts "#{@title} High scores:"
  @players.sort.each do |player|
    
    file.puts player.to_csv
  end
end
end

def players
	puts @players
end

def play(rounds)
  puts "\nThere are #{@players.size} players in #{@title}: "
  @players.each do |player|
      puts player
    end
    puts " "
    treasures = Dand::TreasureTrove::TREASURES
    puts "There are #{treasures.size} items in the game to collect:"
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points"
    end
    puts " "
    1.upto(rounds) do |count|
      puts "\nRound: #{count}"
  @players.each do |player|
    Dand::GameTurn.take_turn(player)
  end
end

  def print_stats
    puts "\n#{@title}'s Stats:"
    puts "\n"
    puts "Player's Reactions Are....... "
    puts "\n"
    weak, strong = @players.partition { |player| player.strong? }

    puts "\n#{@title} High Scores:"
    @players.sort.each do |player|
      puts "#{player.formatted_name} #{player.score}"
    end
    
    # puts "\n#{@title}'s #{strong.size} strongest players:"
    # strong.sort.each do |player|
    #   puts "#{player.formatted_name} #{player.health}"
    # end

    # puts "\n#{@title}'s Strongest Player:"
    # @players.sort_by {|player| player.health}
    #   @players.sort.each do |player| 
    #   puts "#{player.formatted_name} #{player.health}"
    # end
    
    puts "\n#{@title} Treasure Totals:"
    @players.sort.each do |players|
      puts "\n#{players.formatted_name} #{players.points}"
        
      
      players.each_treasure_found do |treas|
        puts "#{treas.points} Total Points For #{treas.name}"
      
    end
end

    
  end
end
end
end