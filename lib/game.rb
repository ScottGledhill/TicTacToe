require 'player'

class Game
  attr_reader :board, :x, :o, :current_turn
  def initialize
    @x = Player.new('x')
    @o = Player.new('o')
    @board = []
    @current_turn = first_turn
  end

  def first_turn
    first_player = [x,o].sample
    @current_turn = first_player.name
  end

  def rotate_turn
    current_turn == x.name ? @current_turn = o.name : @current_turn = x.name
  end
end
