Treasures = Struct.new(:name,:points)

module TreasureTrove
	
	TREASURES = [

		Treasures.new(:pie,5),
		Treasures.new(:bottle,25),
		Treasures.new(:hammer,50),
		Treasures.new(:skillet,100),
		Treasures.new(:crowbar,200),
		Treasures.new(:broomstick,400)
	]
	def self.random

		TREASURES.sample

	end

end
if __FILE__ == $0

  puts TreasureTrove::TREASURES

  Treasure = TreasureTrove.random
  puts "Enjoy your #{Treasure.name} (#{Treasure.alcohol}% alcohol by volume)"
  
end