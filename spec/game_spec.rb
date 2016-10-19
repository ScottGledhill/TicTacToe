require 'game'

describe Game do
  subject(:game) {described_class.new}

  it 'can initialize the game board' do
    expect(game.board).to eq []
  end

  it 'can choose a player to go first' do
    game1 = double
    allow(game1).to receive(:first_turn) {'x'}
    expect(game1.first_turn).to eq 'x'
  end

  it 'can rotate turns between players' do
    game.rotate_turn
    expect(game.current_turn).to eq 'o'
    game.rotate_turn
    expect(game.current_turn).to eq 'x'
  end
end
