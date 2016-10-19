require 'game'

describe Game do

    subject(:game) {described_class.new}

  it 'can initialize the game board' do
    expect(game.board).to eq ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
  end

  it 'can choose a game to go first' do
    game1 = double
    allow(game1).to receive(:first_turn) {'x'}
    expect(game1.first_turn).to eq 'x'
  end

  it 'can rotate turns between players' do
    game1 = double
    allow(game1).to receive(:current_turn) {'x'}
    allow(game1).to receive(:rotate_turn) {'o'}
    game1.rotate_turn
    allow(game1).to receive(:current_turn) {'x'}
    expect(game1.current_turn).to eq 'x'
  end

  it 'can show current board places after move' do
    game1 = double
    allow(game1).to receive(:move)
    allow(game1).to receive(:board) {["a1", "a2", "o", "b1", "b2", "b3", "x", "c2", "c3"]}
    game1.move('a3')
    game1.move('c1')
    expect(game1.board).to eq ["a1", "a2", "o", "b1", "b2", "b3", "x", "c2", "c3"]
  end


  it 'can not move if not within the board' do
    expect {game.move('d4')}.to raise_error(RuntimeError, 'Move error')
  end

  it 'cannot move onto a board position already taken' do
    game.move('a2')
    expect {game.move('a2')}.to raise_error(RuntimeError, 'Move error')
  end

  it 'can not move unless it is current turn' do
    expect {game.move('a2')}.to raise_error(RuntimeError, 'Move error')
  end

  it 'can be won' do
    p game.board
    game.move('c1')
    game.move('c2')
    expect(game.move('c3')).to eq 'game won'
  end
end
