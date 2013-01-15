require_relative 'game'
require_relative 'treasure_trove'
require_relative 'playable'
class Player
	include Playable
attr_accessor:name
attr_reader :score
attr_reader :health

def initialize(name,health=100)

@name = name.capitalize
@health = health
# @score = score
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
"I'm #{@name} with a health = #{@health}, points = #{points} and score = #{score}."
end	

# def load_players(filename)
# File.readlines(filename).each do |line|
# add_player(player.from_csv(line))
# end
# end

def self.from_csv(line)
name, health = line.split(',')
Player.new(name, Integer(health))
end

def to_csv
	"#{@name}, #{@health}"
end

def score

@health + points

end
def each_treasure_found
	@found_treasure.each do |name, value|
		treasure = Treasures.new(name, value)
		yield treasure
	end
end


def formatted_name
    @name.ljust(20, '.')
end
def <=>(other_player)
    other_player.score <=> score
end  
end






