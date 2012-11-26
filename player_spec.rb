require_relative 'player'
describe 'Player' do
	before do 
		 $stdout = StringIO.new 
		 @player = Player.new("aaron", 150)
		 @player2 = Player.new("syntha",60)
	end
it "has a capitalized name" do
    @player.name.should == "Aaron"
end
it "has an initial health" do
	@player.health.should == 150
end

it "has a string representation" do
	@player.to_s.should == "I'm Aaron with a health of 150 with a score of 750 "
end

it "computes a score as the sum of its health and length of name" do
	@player2.score.should ==  360	
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
end