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
    game1 = double
    allow(game1).to receive(:current_turn) {'x'}
    allow(game1).to receive(:rotate_turn) {'o'}
    game1.rotate_turn
    allow(game1).to receive(:current_turn) {'o'}
    expect(game1.current_turn).to eq 'o'
  end
end
