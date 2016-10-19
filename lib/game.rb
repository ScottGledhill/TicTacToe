class Game
  attr_reader :board
  def initialize
    @x = Player.new
    @o = Player.new
    @board = []
  end
end
