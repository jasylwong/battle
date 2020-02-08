require './lib/player.rb'

class Game
  
  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = @player1
    @counter = 1
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def attack(target)
    target.attacked
  end

  def switch_turn
    @counter +=1
    @current_turn = @counter % 2 != 0 ? @player1 : @player2
  end

  def win_and_lose
    @player2 if @player1.health == 0
    @player1 if @player2.health == 0
  end
end
