require 'player'

describe Player do
  subject(:player) {described_class.new}
  it 'can move' do
    player.move('a1')
    expect(player.moves).to eq ['a1']
  end

  it 'can not move if not within the board' do
    expect {player.move('d4')}.to raise_error(RuntimeError, 'please move within the board')
  end
end
