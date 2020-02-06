require 'game'
require 'player'

describe Game do

  subject{ Game.new(Player.new('test_player1'), Player.new('test_player2')) }
  
  before(:each) do
    Player2 = instance_double(Player, :health => 100, :attacked => 90)
  end

    it 'accepts instances of players' do
      expect(subject.player1).to be_a(Player)
      expect(subject.player2).to be_a(Player)
    end


  it 'damages the player' do
    expect(subject.attack(Player2)).to eq 90
  end

end
