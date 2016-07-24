require 'player'
describe Player do
  subject(:player) { Player.new('Albie') }
  describe '#return_name' do
    it "returns a players name" do
      expect(player.return_name).to eq('Albie')
    end
  end
  describe 'returns HP' do
    it "returns HP" do
      expect(player.hp).to eq(50)
    end
  end
  describe 'take damage' do
    it 'reduces HP' do
      expect{ player.take_damage }.to change{ player.hp }.by -10
    end
    it 'knows a player is alive' do
      expect(player.alive?).to eq true
    end
    it 'knows a player is dead' do
      5.times { player.take_damage }
      expect(player.alive?).to eq false
    end
  end

end
