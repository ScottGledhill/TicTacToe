require 'game'

describe Game do
  subject(:game) {described_class.new}

  it 'can initialize the game board' do
    expect(game.board).to eq []
  end

end
