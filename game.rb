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
    treasure = TreasureTrove::TREASURES
    puts "There are #{treasure.size} items in the game to collect"
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
    @players.sort_by {|player| player.score}.reverse
      puts "#{player.name} #{player.score}"
    end

    puts "\n#{@title}'s #{strong.size} strongest players:"
    @players.sort_by {|player| player.health}
      puts "#{player.name} #{player.health}"
    end
    
    puts "\n#{@title}'s #{weak.size} weak players:"
    @players.sort_by {|player| player.health}.reverse
      puts "#{player.name} #{player.health}"
    end
    
  end
end



# player1 = Player.new("aaron")
# player2 = Player.new("syntha",60)
# player3 = Player.new("molvak",125)
# player4 = Player.new("Lorek",90)

# array

# players = [player1, player2, player3]

# dungeon = Game.new("dungeon and dragons")

# dungeon.add_player(player1)
# dungeon.add_player(player2)
# dungeon.add_player(player3)
# dungeon.add_player(player4)
# puts dungeon.list
# puts dungeon.players
# puts dungeon.play






