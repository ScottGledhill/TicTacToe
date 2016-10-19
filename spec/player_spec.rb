require 'player'

describe Player do
  subject(:player) {described_class.new}
  it 'can move' do
    player.move('a1')
    expect(player.moves).to eq ['a1']
  end

  it 'can not move if not within the board' do
    player.move('d4')
    expect(player.moves).to eq []
  end
end
