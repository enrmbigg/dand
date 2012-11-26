require_relative 'game'

describe Game do

  before do
  	$stdout = StringIO.new
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @players = Player.new("moe", @initial_health)
    
    @game.add_player(@players)
  end

it "Low Number" do
  Die.stub(:roll_die).and_return(1)
  @game.play
  @players.health.should == @initial_health -10
end

it "High Number" do
  Die.stub(:roll_die).and_return(5)
  @game.play
  @players.health.should == @initial_health +15
end

it "Medium Number" do
  Die.stub(:roll_die).and_return(4)
  @game.play
  @players.health.should == @initial_health
end



end