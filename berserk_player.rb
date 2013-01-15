equire_relative 'player'

class BerserkPlayer < Player
	def initialize(name,health=100, berskcount)
      super(name, health)
      @BerskCount = berskcount
      @found_treasure = Hash.new(0)
    end
    def berserk?

    	if @BerskCount > 5
    		puts "#{@name} is berserk!!"
		else 
			puts "#{@name} is calm...."
   	end
   	def wooted

		@BerskCount + 1
		{ super }
	
	end
end
if __FILE__ == $0
  berserker = BerserkPlayer.new("berserker", 50)
  6.times { berserker.w00t }
end