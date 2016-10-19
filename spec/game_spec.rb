require 'game'

describe Game do
  subject(:game) {described_class.new}

  it 'can initialize the game board' do
    expect(game.board).to eq []
  end

  it 'can choose a player to go first' do
    expect(game.first_turn).to eq x or o
  end
end
