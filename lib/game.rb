require 'player'

class Game
  attr_reader :board, :x, :o
  def initialize
    @x = Player.new
    @o = Player.new
    @board = []
  end
end
