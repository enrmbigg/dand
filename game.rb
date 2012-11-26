require_relative 'die'
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

def play 
    puts "There are #{@players.size} players in #{@title}: "
 
  @players.each do |player|
    puts player
  end
    
    @players.each do |i|
    die = Die.new
      case die.roll_die
       when  1..2
      	i.blam
      	puts "#{i.name} has taken a hit"
       when  3..4
        puts  "Nothing happend to #{i.name}"
       else 
      	i.wooted
     	  puts "#{i.name} has been given life"
       end 
      
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






