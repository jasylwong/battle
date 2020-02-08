require 'game'
require 'player'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  subject(:finished_game) { described_class.new(player1, dead_player) }
  let(:player1) { double :player1, health: 100 }
  let(:player2) { double :player2, health: 100 }
  let(:dead_player) { double :dead_player, health: 0 }
    
  describe "#player1" do
    it 'retrieves the first player' do
      expect(game.player1).to eq player1
    end
  end

  describe "#attack" do
    it 'damages the player' do
      expect(player2).to receive(:attacked)
      game.attack(player2)
    end
  end

  describe "#switch_turn" do
    it 'alternates which player\'s turn it is' do
      expect(game.current_turn). to eq player1
      game.switch_turn
      expect(game.current_turn). to eq player2
      game.switch_turn
      expect(game.current_turn). to eq player1
    end
  end

  describe '#win_and_lose' do
    it 'returns the winner' do
      expect(finished_game.win_and_lose). to eq player1
    end
  end
end
