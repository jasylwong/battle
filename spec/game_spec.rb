require 'game'
require 'player'

describe Game do

  # before(:each) do
  #   jason = double(Player, :attack_points => 10)
  #   liz = double(Player, :health => 100)
  # end

  it 'damages the player' do
    liz = Player.new("Liz")
    jason = Player.new("Jason")
    expect { subject.attack(jason, liz) }.to change { liz.health }.by(-10)
  end

  end
