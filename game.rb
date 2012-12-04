require_relative 'game_turn'
require_relative 'player'

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
    1.upto(rounds) do |count|
      puts "\nRound: #{count}"
  @players.each do |player|
    GameTurn.take_turn(player)
    puts player
  end
end
end
  def print_stats
    puts "\n#{@title}'s Stats:"
    
    strong, weak =@players.partition { |player| player.Strong? }
   
    puts "\n#{@title} High Scores:"
    @players.sort.each do |player|
      puts "#{player.formatted_name} #{player.score}"
    end

    puts "\nStrong Players:"
    puts strong.sort
    
    puts "\nWeak Players:"
    puts weak.sort
    
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






