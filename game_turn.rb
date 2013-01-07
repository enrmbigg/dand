require_relative 'treasure_trove'
require_relative 'player'

module GameTurn

	def self.roll_die
    	rand(1..6)
  	end

def self.take_turn(player)
number_rolled = roll_die
treasure = TreasureTrove.random
puts " "
case number_rolled	
  when 1..2
      player.blam
      puts "#{player.name} was hit"
      player.found_treasure(treasure)
         
  when 3..4
      puts "#{player.name} was skipped."
      player.found_treasure(treasure)
      
  else
      player.wooted
      puts "#{player.name} was healed"
      player.found_treasure(treasure)
      
  end
    puts player
    
end
end
    
    