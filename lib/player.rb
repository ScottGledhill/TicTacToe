class Player
  attr_reader :moves
  def initialize
    @moves = []
  end

  def move(move)
    moves << move
  end
end
