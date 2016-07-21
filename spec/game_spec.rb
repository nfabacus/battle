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
      game.attack
    end
  end

  describe 'knows the current player' do
    it 'returns the current player' do
      expect(game.current_player).to eq player1
    end
  end

  describe 'switches players' do
    it 'switches the current player' do
      allow(player2).to receive(:alive?).and_return(true)
      game.switch_turn
      expect(game.current_player).to eq player2
    end
  end

  describe 'knows who the current opponent is' do
    it 'returns the current opponent' do
      expect(game.current_opponent).to eq player2
    end
  end

  describe 'knows if it is gameover' do
    it 'returns true if gameover' do
      allow(player2).to receive(:alive?).and_return(false)
      expect(game.gameover).to eq true
    end
  end

end
