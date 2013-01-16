require_relative 'player'
module Dand
class ClumsyPlayer < Player
	def found_treasure(treasures)
  Dand::Treasures.new(treasures.name, treasures.points / 2)  

  super
  end
end
end


if __FILE__ == $0
  clumsy = Dand::ClumsyPlayer.new("klutz")  
  
  hammer = Dand::Treasures.new(:hammer, 50)
  clumsy.found_treasure(hammer)
  clumsy.found_treasure(hammer)
  clumsy.found_treasure(hammer)
  
  crowbar = Dand::Treasures.new(:crowbar, 400)
  clumsy.found_treasure(crowbar)
  
  clumsy.each_treasure_found do |treasure|
    puts "#{treasure.points} total #{treasure.name} points"
  end
  puts "#{clumsy.points} grand total points"
end



