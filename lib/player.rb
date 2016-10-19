require 'board'
class Player
  include Board
  attr_reader :moves

  def initialize
    @moves = []
  end

  def move(move)
    if BOARD.include?(move)
      moves << move
    else
      error
    end
  end

  def error
    'please move within the board'
  end
end
