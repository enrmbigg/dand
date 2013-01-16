require_relative 'treasure_trove'
require_relative 'player'
require_relative 'loaded_die'
require_relative 'die'
require_relative 'game'
module Dand
module GameTurn
  

  def self.take_turn(player)
  treasure = Dand::TreasureTrove.random
  die = Dand::Die.new
  number_rolled = die.roll

  case number_rolled	
    when 1..2 then
        die.audit
        player.blam
        puts "#{player.name} was hit"
        player.found_treasure(treasure)
           
    when 3..4 then
        die.audit
        puts "#{player.name} was skipped."
        player.found_treasure(treasure)
        
    else
        die.audit
        player.wooted
        puts "#{player.name} was healed"
        player.found_treasure(treasure)
        
    end
      puts player
      puts "\n"

      # if player.health = 0
      #   Game.remove_player(player)
      # end
      
  end
end
end