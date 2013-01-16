module Playable
	def blam

		@health = @health - 10

	end
	def wooted

		@health = @health + 15

	end
	def strong?

	if @health > 100
		puts "#{@name} is strong!!"
	else 
		puts "#{@name} is puny :("	
	end
	def <=>(other_player)
    other_player.score <=> score
	end  
end
end