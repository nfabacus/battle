require 'game'

describe Game do
  subject(:game) {described_class.new(player1, player2)}
  let(:player1) {double(:player1)}
  let(:player2) {double(:player2)}

  describe 'returns player information' do
    it 'returns the name of a player' do
      allow(player1).to receive(:name).and_return("Thor")
      expect(game.name_of(player1)).to eq "Thor"
    end
  end

  describe 'attack' do
    it 'damages the other player' do
      expect(player2).to receive(:take_damage)
      game.attack(player2)
    end
  end


end
