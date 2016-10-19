require 'player'

describe Player do
  subject(:player) {described_class.new}
  it 'can move' do
    player.move('a1')
    expect(player.moves).to eq ['a1']
  end
end
