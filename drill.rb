class Hero
  attr_accessor :level, :hp, :attack, :defense, :speed, :intel, :luck

  def initialize(*args)
    @level = args[0]
    @hp = args[1]
    @attack = args[2]
    @defense = args[3]
    @speed = args[4]
    @intel = args[5]
    @luck = args[6]
  end

  def levelup(*args)
    @level += 1
    @hp += args[0]
    @attack += args[1]
    @defense += args[2]
    @speed += args[3]
    @intel += args[4]
    @luck += args[5]
  end

  def muscle_training(*args)
    @hp += args[0]
    @attack += args[1]
  end

  def running(*args)
    @defense += args[0]
    @speed += args[1]
  end

  def study(*args)
    @intel += args[0]
  end

  def pray(*args)
    @luck += args[0]
  end
end

number_of_hero, event_count = gets.split.map(&:to_i)

heroes = []

number_of_hero.times do
  status = gets.split.map(&:to_i)
  heroes << Hero.new(*status)
end

event_count.times do
  id, item, *numbers = gets.split
  id = id.to_i - 1
  numbers.map(&:to_i)

  case item
  when "levelup"
    heroes[id].levelup(*numbers)
  when "muscle_training"
    heroes[id].muscle_training(*numbers)
  when "running"
    heroes[id].running(*numbers)
  when "study"
    heroes[id].study(*numbers)
  when "pray"
    heroes[id].pray(*numbers)
  end
end