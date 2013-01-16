require 'dand/clumsy_player'
module Dand
 describe ClumsyPlayer do
  before do
    $stdout = StringIO.new 
    @player = Dand::ClumsyPlayer.new("klutz")
  end
  
  it "only gets half the point value for each treasure" do
    @player.points.should == 0

    hammer = Dand::Treasures.new(:hammer, 50)
    @player.found_treasure(hammer)
    @player.found_treasure(hammer)
    @player.found_treasure(hammer)

    @player.points.should == 75

    crowbar = Dand::Treasures.new(:crowbar, 400)
    @player.found_treasure(crowbar)
    
    @player.points.should == 275    
    
    yielded = []
    @player.each_treasure_found do |treasure|
      yielded << treasure
    end

    yielded.should == [Dand::Treasures.new(:hammer, 75), Treasure.new(:crowbar, 200)]    
  end

end
end