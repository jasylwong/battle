require 'game'
require 'player'

describe Game do



  it 'damages the player' do
    liz = double(Player, :health => 100, :attacked => 90)
    expect(subject.attack(liz)).to eq 90
  end

  end
