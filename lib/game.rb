require 'player'

class Game
  attr_reader :board, :x, :o
  def initialize
    @x = Player.new('x')
    @o = Player.new('o')
    @board = []
  end

  def first_turn
    first_player = [x,o].sample
    "#{first_player.name} goes first"
  end
end
