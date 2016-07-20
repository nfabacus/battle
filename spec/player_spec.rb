require 'player'
describe Player do

  describe '#return_name'do
    subject(:player) { Player.new('Albie') }
    it "returns a players name" do
      expect(player.return_name).to eq('Albie')
    end
  end

end
