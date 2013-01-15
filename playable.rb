module Playable
	def blam

		@health = @health - 10

	end
	def wooted

		@health = @health + 15

	end
	def strong?

	if @health > 75
		puts "#{@name} is strong!!"
	else 
		puts "#{@name} is puny :("	
	end
end