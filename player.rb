require_relative 'game'
require_relative 'treasure_trove'
class Player
attr_accessor:name
attr_reader :score
attr_reader :health

def initialize(name,health=100)

@name = name.capitalize
@health = health
@score = score
@found_treasure = Hash.new(0)
 

end
def found_treasure(treasures)
	@found_treasure[treasures.name] += treasures.points
    puts "#{@name} found a #{treasures.name} which is worth #{treasures.points} points."
    puts "#{@name}'s treasures: #{@found_treasure}"

end
def points
    @found_treasure.values.reduce(0, :+)
  end
def to_s

"I'm #{@name} with a health = #{@health}, points = #{points} and #{score}."

end	

def blam

@health = @health - 10

end
def wooted

@health = @health + 15

end
def score

@health + points

end
def strong?

if @health > 75
	puts "#{@name} is strong!!"
else 
	puts "#{@name} is puny :("
end
def formatted_name
    @name.ljust(20, '.')
end
def <=>(other_player)
    other_player.score <=> score
end  

end

end


