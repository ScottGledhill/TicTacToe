require 'board'
class Player
  include Board
  attr_reader :moves

  def initialize
    @moves = []
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
