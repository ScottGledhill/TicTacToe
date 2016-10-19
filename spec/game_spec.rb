require 'game'

describe Game do
  subject(:game) {described_class.new}

  it 'can initialize the game board' do
    expect(game.board).to eq []
  end

  it 'can choose a player to go first' do
    game1 = double
    allow(game1).to receive(:first_turn) {'x goes first'}
    expect(game1.first_turn).to eq 'x goes first'
  end

  # it 'can rotate turns between players' do
  #   expect(game.rotate_turn).to eq
  # end
end
