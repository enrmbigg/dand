require_relative 'game_turn'
require_relative 'player'
require_relative 'treasure_trove'

class Game

def initialize(title)

@title = title.capitalize
@players = []
end
def add_player(players)

	@players << players
end
 
def list
"This game is called #{@title}"
end

def players
	puts @players
end

def play(rounds)
  puts "\nThere are #{@players.size} players in #{@title}: "
  @players.each do |player|
      puts player
    end
    treasures = TreasureTrove::TREASURES
    puts "There are #{treasures.size} items in the game to collect"
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points"
    end
    1.upto(rounds) do |count|
      puts "\nRound: #{count}:"
  @players.each do |player|
    GameTurn.take_turn(player)
  end
end

  def print_stats
    puts "\n#{@title}'s Stats:"
    
    strong , weak = @players.partition { |player| player.strong? }
   
    puts "\n#{@title} High Scores:"
    @players.sort.each do |player|
      puts "#{player.formatted_name} #{player.score}"
    end
    
    # puts "\n#{@title}'s #{strong.size} strongest players:"
    # strong.sort.each do |player|
    #   puts "#{player.formatted_name} #{player.health}"
    # end
    puts "\n#{@title}'s #{weak.size} strongest players:"
    weak.sort.each do |player|
      puts "#{player.formatted_name} #{player.health}"
    end
    
    # puts "\n#{@title} Treasure Totals:"
    # @players.sort.each do |player|
    #   puts "#{player.formatted_name} #{player.points}"
    # end
  end
end
end