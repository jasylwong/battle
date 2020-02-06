class Player
    attr_accessor :name, :health, :attack_points

    DEFAULT_HP = 100
    DEFAULT_ATTACK_POINTS = 10

    def initialize(name, health = DEFAULT_HP, attack_points = DEFAULT_ATTACK_POINTS)
      @name = name
      @health = health
      @attack_points = attack_points
    end

    def attacked
      @health -= @attack_points
    end
  end
