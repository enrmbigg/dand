module Dand
Treasures = Struct.new(:name,:points)

module TreasureTrove
	
	TREASURES = [

		Dand::Treasures.new(:pie,5),
		Dand::Treasures.new(:bottle,25),
		Dand::Treasures.new(:hammer,50),
		Dand::Treasures.new(:skillet,100),
		Dand::Treasures.new(:crowbar,200),
		Dand::Treasures.new(:broomstick,400)
	]
	def self.random

		TREASURES.sample

	end

end
end
if __FILE__ == $0

  puts TreasureTrove::TREASURES

  Treasure = TreasureTrove.random
  puts "#{Treasure.name} (#{Treasure.points})"
  
end