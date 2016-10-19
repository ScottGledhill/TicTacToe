require 'player'
require 'board'

class Game
  include Board
  attr_reader :board, :x, :o, :current_turn

  def initialize
    @x = Player.new('x')
    @o = Player.new('o')
    @board = BOARD
    @current_turn = first_turn
  end


  def move(move)
    if BOARD.include?(move)
      @board.map! {|e| e == move ? @current_turn : e}
      rotate_turn
      game_won?
    else
      raise error
    end
  end

  def rotate_turn
    current_turn == x.name ? @current_turn = o.name : @current_turn = x.name
    "#{current_turn}'s move'"
  end

  private

  def game_won?

  end
  
  def first_turn
    first_player = [x,o].sample
    @current_turn = first_player.name
  end

  def error
    'Move error'
  end
end
