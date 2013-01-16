#!/usr/bin/env ruby
chmod +x bin/dand
require_relative '../lib/dand/game'
require_relative '../lib/dand/clumsy_player'
require_relative '../lib/dand/berserk_player'

# player1 = Dand::Player.new("aaron")
# player2 = Dand::Player.new("syntha",60)
# player3 = Dand::Player.new("molvak",125)
# player4 = Dand::Player.new("lorek",90)
player5 = Dand::ClumsyPlayer.new("klutz",105)
player6 = Dand::BerserkPlayer.new("brick",90)
# The Keep on the Game.play(10) do
#   The Keep on the Game.total_points >= 2000
# end
game = Dand::Game.new('Dungeon and Dragons')
default_player_file = File.join(File.dirname(__FILE__), 'players.csv')
game.load_players(ARGV.shift || default_player_file)
# game.add_player(player1)
# game.add_player(player2)
# game.add_player(player3)
# game.add_player(player4)
game.add_player(player5)
game.add_player(player6)


loop do
	puts "\nHow many Rounds?? (type 'quit' to exit)"
	input = gets.chomp.downcase
	case input
	when /^\d+$/
		game.play(input.to_i) do #number of rounds
	game.total_points >= 3000
end
	end
when 'quit', 'exit'
		game.print_stats
		game.save
		break
	else
		puts "Please enter an integer or 'quit'"
	end 
end
