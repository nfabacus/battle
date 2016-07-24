class Game

  attr_reader :player1, :player2, :turn, :game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = player1
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.get
    @game
  end

  @game = Game.get

  def name_of(player)
    player.name
  end

   def attack
    victim = current_opponent
    victim.take_damage
  end

  def current_player
    turn
  end

  def current_opponent
    if current_player == player1
      opponent = player2
    else
      opponent = player1
    end
    opponent
  end

  def switch_turn
    if !gameover
      if turn == player1
        @turn = player2
      else
        @turn = player1
      end
   end
  end

  def gameover
    !current_opponent.alive?
  end
  private





end
