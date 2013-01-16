require_relative 'player'
module Dand
class BerserkPlayer < Player
	def initialize(name,health=100)
      super(name, health)
      @BerskCount = 0
      # @found_treasure = Hash.new(0)
  end
  def berserk?
    	@BerskCount > 5

    		
	end
  def calm?
      @BerskCount < 5

        
  end
   	def wooted
      super

		@BerskCount += 1
		puts "#{@name} is berserk!! Watch Out!!!!!!" if berserk?
    puts "#{@name} is calm....."if calm?
  end
    

  def blam
     # if berserk?
     #   wooted
     # else
     #   super
     berserk? ? wooted : super
     end


end
end



if __FILE__ == $0
  berserker = Dand::BerserkPlayer.new("berserker", 50)
  6.times { berserker.wooted }
  2.times { berserker.blam }
  puts berserker.health
end
