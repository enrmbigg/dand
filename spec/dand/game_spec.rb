require 'dand/game'
module Dand
describe Game do

  before do
  	$stdout = StringIO.new
    @game = Dand::Game.new("Knuckleheads")

    @initial_health = 100
    @players = Dand::Player.new("moe", @initial_health)
    
    @game.add_player(@players)
  end
  it "assigns a treasure for points during a player's turn" do     
  # game = Game.new("Knuckleheads")
  player = Dand::Player.new("Aaron")
     
  @game.add_player(player)
  
  @game.play(1)
  
  player.points.should_not be_zero
end

# it "Low Number" do
#   GameTurn.stub(:roll_die).and_return(1)
#   @game.take_turn
#   @players.health.should == @initial_health -10
# end

# it "High Number" do
#   GameTurn.stub(:roll_die).and_return(5)
#   @game.take_turn
#   @players.health.should == @initial_health +15
# end

# it "Medium Number" do
#   GameTurn.stub(:roll_die).and_return(4)
#   @game.take_turn
#   @players.health.should == @initial_health
# end

end

end