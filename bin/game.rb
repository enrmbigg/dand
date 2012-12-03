
require_relative 'game_turn'

class Player
attr_accessor:name
attr_reader :score
attr_reader :health
def initialize(name,health=100)

@name = name.capitalize
@health = health
@score = score
 

end

def to_s

"I'm #{@name} with a health of #{@health} with a score of #{@score} "

end	

def blam

@health = @health - 10

end
def wooted

@health = @health + 15

end
def score

@name.length * @health

end

end


player1 = Player.new("aaron")
player2 = Player.new("syntha",60)
player3 = Player.new("molvak",125)
player4 = Player.new("Lorek",90)

# puts player3.name
# player3.name = "Murda"
# puts player3.name
# puts player3.health
# puts player3.score
# puts player3


# puts player1.to_s
# puts player2.to_s
# puts player3.to_s

# player3.blam
# puts player3.to_s
# player3.wooted
# puts player3.to_s

# /array/

# players = [player1, player2, player3]
# puts "There are #{players.size} in the game"
# players.each do |i|
# 	puts i
# end
# players.each do |i|
# 	puts i.health
# end
# players.each do |i|
# 	puts i.blam
# end
# players.each do |i|
# 	puts i
# end

# players.pop(2)
# players.push(player3)
# players.push(player4) 
# puts players





player1 = Player.new("aaron")
player2 = Player.new("syntha",60)
player3 = Player.new("molvak",125)
player4 = Player.new("Lorek",90)

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
  
  @players.each do |player|
    GameTurn.take_turn(player)
    puts player
  end
end

end



# dungeon = Game.new("dungeon and dragons")

# dungeon.add_player(player1)
# dungeon.add_player(player2)
# dungeon.add_player(player3)
# dungeon.add_player(player4)
# puts dungeon.list
# puts dungeon.players
# puts dungeon.play






