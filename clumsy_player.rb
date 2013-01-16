require_relative 'player'

class ClumsyPlayer < Player
	def found_treasure(treasures)
	points = treasures.points / 2
	@found_treasure[treasures.name] += treasures.points
	puts "#{@name} found a #{treasures.name} which is worth #{treasures.points} points."
    puts "#{@name}'s treasures: #{@found_treasure}"

  end
end


if __FILE__ == $0
  clumsy = ClumsyPlayer.new("klutz")  
  
  hammer = Treasures.new(:hammer, 50)
  clumsy.found_treasure(hammer)
  clumsy.found_treasure(hammer)
  clumsy.found_treasure(hammer)
  
  crowbar = Treasures.new(:crowbar, 400)
  clumsy.found_treasure(crowbar)
  
  clumsy.each_treasure_found do |treasure|
    puts "#{treasure.points} total #{treasure.name} points"
  end
  puts "#{clumsy.points} grand total points"
end



