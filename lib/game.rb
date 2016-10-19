require 'player'
require 'board'

class Game
  include Board
  attr_reader :board, :x, :o, :current_turn, :moves
  def initialize
    @x = Player.new('x')
    @o = Player.new('o')
    @board = []
    @current_turn = first_turn
    @moves = []
  end

  def first_turn
    first_player = [x,o].sample
    @current_turn = first_player.name
  end

  def rotate_turn
    current_turn == x.name ? @current_turn = o.name : @current_turn = x.name
  end

  def move(move)
    if BOARD.include?(move) && !moves.include?(move)
      moves << move
    else
      raise error
    end
  end

  private

  def error
    'Move error'
  end
end
