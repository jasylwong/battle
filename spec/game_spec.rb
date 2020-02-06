require 'game'
require 'player'

describe Game do

  before(:each) do
    jason = double(Player, :attack_points => 10)
    liz = double(Player, :health => 100)
  end

    it 'damages the player' do
      subject = Game.new(jason, liz)
      p expect { subject.attack(jason, liz) }.to change { liz.health }.by(-10)
    end

  end
