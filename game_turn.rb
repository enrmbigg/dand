require_relative 'treasure_trove'

module GameTurn

	def self.roll_die
    	rand(1..6)
  	end

def self.take_turn(player)
number_rolled = roll_die
case number_rolled	
  when 1..2
      player.blam
      t=TreasureTrove.Random
      puts "#{player.name} has found #{t.name}"
  when 3..4
      puts "#{player.name} was skipped."
      t=TreasureTrove.Random
      puts "Though #{player.name} has also found #{t.name}"
  else
      player.wooted
      t=TreasureTrove.Random
      puts "#{player.name} has found #{t.name}"
  end
    puts player
end
end