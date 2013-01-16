require 'dand/player'
require 'dand/treasure_trove'
module Dand
describe 'Player' do
	before do 
		 $stdout = StringIO.new 
		 @player = Dand::Player.new("aaron",150)
		 @player2 = Dand::Player.new("syntha",60)
	end
it "has a capitalized name" do
    @player.name.should == "Aaron"
end
it "has an initial health" do
	@player.health.should == 150
end

it "has a string representation" do
	@player.to_s.should == "I'm Aaron with a health = 150, points = 0 and score = 150."

end

it "computes a score as the sum of its health and points" do
  @player.found_treasure(Dand::Treasures.new(:hammer, 50))
  @player.found_treasure(Dand::Treasures.new(:hammer, 50))
  
  @player.score.should == 250
end

it "increases health by 15 when wooted" do
	@player2.wooted
	@player2.health.should == 75
end

it "decreases health by 10 when blammed" do
	@player2.blam
	@player2.health.should == 50
end
it "is strong" do
  @player.strong? == true
end
it "is weak" do
  @player2.should_not be_strong
end
it "computes points as the sum of all treasure points" do
    @player.points.should == 0

    @player.found_treasure(Dand::Treasures.new(:hammer, 50))

    @player.points.should == 50

    @player.found_treasure(Dand::Treasures.new(:crowbar, 400))

    @player.points.should == 450

    @player.found_treasure(Dand::Treasures.new(:hammer, 50))

    @player.points.should == 500
  end
  it "has a string representation" do  
  @player2.found_treasure(Dand::Treasures.new(:hammer, 50))
  @player2.found_treasure(Dand::Treasures.new(:hammer, 50))

  @player2.to_s.should == "I'm Syntha with a health = 60, points = 100 and score = 160."
end
it "yields each found treasure and its total points" do
  @player.found_treasure(Dand::Treasures.new(:wine, 100))
  @player.found_treasure(Dand::Treasures.new(:wine, 100))
  @player.found_treasure(Dand::Treasures.new(:hammer, 50))
  @player.found_treasure(Dand::Treasures.new(:bottle, 5))
  @player.found_treasure(Dand::Treasures.new(:bottle, 5))
  @player.found_treasure(Dand::Treasures.new(:bottle, 5))
  @player.found_treasure(Dand::Treasures.new(:bottle, 5))
  @player.found_treasure(Dand::Treasures.new(:bottle, 5))
  
  yielded = []
  @player.each_treasure_found do |treasure|
    yielded << treasure
  end
  
  yielded.should == [
    Treasures.new(:wine, 200), 
    Treasures.new(:hammer, 50), 
    Treasures.new(:bottle, 25)
 ]
end
end
end