require './lib/player.rb'

class Game

  def initialize(player_1, player_2)
    @p1 = player_1
    @p2 = player_2
  end
  
  DEFAULT_ATTACK_POINTS = 10

  def attack(attacker, target)
    target.health -= attacker.attack_points
  end

end
