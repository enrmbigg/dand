class Player
attr_accessor:name
attr_reader :score
attr_reader :health
before do 
  $stdout = StringIO.new 
end
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
def strong?

@health >= 100

end

end
player1 = Player.new("aaron")
player2 = Player.new("syntha",60)
player3 = Player.new("molvak",125)
player4 = Player.new("Lorek",90)