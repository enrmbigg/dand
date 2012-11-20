require_relative 'testfile'
describe Player do
it "has a capitalized name" do
  player = Player.new("aaron", 150)

  player.name.should == "Aaron"
end
it "has an initial health" do
	player = Player.new("aaron", 150)
	player.health.should == 150
end

it "has a string representation" do
	player1 = Player.new("arron", 150)
	player1.to_s.should == "I'm Arron with a health of 150 with a score of 750 "
end

it "computes a score as the sum of its health and length of name" do
	player2 = Player.new("syntha",60)
	player2.score.should ==  360	
end

it "increases health by 15 when wooted" do
	player2 = Player.new("syntha",60)
	player2.wooted
	player2.health.should == 75
end

it "decreases health by 10 when blammed" do
	player2 = Player.new("syntha",60)
	player2.blam
	player2.health.should == 50
end
end