require 'game'
require 'player'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
    
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
      expect(subject.current_turn). to eq player1
      subject.switch_turn
      expect(subject.current_turn). to eq player2
      # subject.switch_turn
      # expect(subject.turn). to eq "Player 1"
    end
  end



  # it 'damages the player' do
  #   expect(subject.attack(Player2)).to eq 90
  # end

end
