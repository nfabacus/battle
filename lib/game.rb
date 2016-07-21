class Game
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def name_of(player)
    player.name
  end
  def attack(player)
    player.take_damage
  end

end
