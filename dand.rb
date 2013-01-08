require_relative 'game'

# player1 = Player.new("aaron")
# player2 = Player.new("syntha",60)
# player3 = Player.new("molvak",125)
# player4 = Player.new("Lorek",90)
# The Keep on the Game.play(10) do
#   The Keep on the Game.total_points >= 2000
# end
game = Game.new('Dungeon and Dragons')
game.load_players(ARGV.shift || 'players.csv')
# game.add_player(player1)
# game.add_player(player2)
# game.add_player(player3)
# game.add_player(player4)


loop do
	puts "\nHow many Rounds?? (type 'quit' to exit)"
	input = gets.chomp.downcase
	case input
	when /^\d+$/
		game.play(input.to_i)
when 'quit', 'exit'
		game.print_stats
		game.save
		break
	else
		puts "Please enter an integer or 'quit'"
	end 
end
