class Player
  attr_reader :name, :hp
  DEFAULT_HP = 50
  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end
  def return_name
    @name
  end

  def take_damage
    @hp -=10
  end

  def alive?
    return false if @hp <= 0
    true
  end
end
