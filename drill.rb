class Hero
  attr_accessor :level, :hp, :attack, :defense, :speed, :intel, :luck

  def initialize(level, hp, attack, defense, speed, intel, luck)
    @level = level
    @hp = hp
    @attack = attack
    @defense = defense
    @speed = speed
    @intel = intel
    @luck = luck
  end

  def levelup(hp, attack, defense, speed, intel, luck)
    @level += 1
    @hp += hp
    @attack += attack
    @defense += defense
    @speed += speed
    @intel += intel
    @luck += luck
  end

  def running(defense, speed)
    @defense += defense
    @speed += speed
  end

  def study(intel)
    @intel += intel
  end

  def pray(luck)
    @luck += luck
  end
end