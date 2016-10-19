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
    column_win? || row_win? || diagonal_win? ? "#{current_turn} won" : rotate_turn
  end

  def column_win?
    if board[1] == board[4] && board[4] == board[7] ||
       board[0] == board[3] && board[3] == board[6] ||
       board[1] == board[4] && board[4] == board[7]
       true
    end
  end

  def row_win?
    if board[0] == board[1] && board[1] == board[2] ||
       board[6] == board[7] && board[7] == board[8] ||
       board[3] == board[4] && board[4] == board[5]
       true
    end
  end

  def diagonal_win?
    if board[2] == board[5] && board[5] == board[8]||
      board[0] == board[4] && board[4] == board[8] ||
      board[6] == board[4] && board[4] == board[2]
      true
    end
  end

  def first_turn
    first_player = [x,o].sample
    @current_turn = first_player.name
  end

  def error
    'Move error'
  end
end
