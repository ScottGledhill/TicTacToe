require 'board'
class Player
  include Board
  attr_reader :moves, :name

  def initialize(name)
    @name = name
  end
end
