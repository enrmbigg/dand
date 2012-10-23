attr_accessor :title
attr_writer :score
attr_reader :health

class Player

def initialize(name,health=100,score=100)

@name = name.capitalize	
@health = health
@score = score
 
end

def to_s

"I'm #{@name} with a health of #{@health} "

end	

def blam

@health = @health - 10

end
def wooted

@health = @health + 15

end


end


player1 = Player.new("aaron")
player2 = Player.new("syntha",60)
player3 = Player.new("molvak",125)

puts player2.name
player2.name = "murda"
puts player2.name
puts player2.health
puts player2.score
puts player2


puts player1.to_s
puts player2.to_s
puts player3.to_s

player3.blam
puts player3.to_s
player3.wooted
puts player3.to_s


