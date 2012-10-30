

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

puts player3.name
player3.name = "Murda"
puts player3.name
puts player3.health
puts player3.score
puts player3


puts player1.to_s
puts player2.to_s
puts player3.to_s

player3.blam
puts player3.to_s
player3.wooted
puts player3.to_s
