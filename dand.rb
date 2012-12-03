require_relative 'game'

player1 = Player.new("aaron")
player2 = Player.new("syntha",60)
player3 = Player.new("molvak",125)
player4 = Player.new("Lorek",90)

game = Game.new('Dungeon and Dragons')
game.add_player(player1)
game.add_player(player2)
game.add_player(player3)
game.add_player(player4)

game.play(3)
game.print_stats
