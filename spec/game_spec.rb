require 'game'

describe Game do
  subject(:game) {Game.new}
  let(:player1) {double(:player1)}
  let(:player2) {double(:player2)}

  describe 'attack' do
    it 'damages the other player' do
      expect(player2).to receive(:take_damage)
      game.attack(player2)
    end
  end


end
