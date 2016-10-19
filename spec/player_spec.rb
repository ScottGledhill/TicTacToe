require 'player'

describe Player do
  subject(:player) {described_class.new('name')}
  it 'can move' do
    player.move('a1')
    expect(player.moves).to eq ['a1']
  end

  it 'can not move if not within the board' do
    expect {player.move('d4')}.to raise_error(RuntimeError, 'Move error')
  end

  it 'cannot move onto a board position already taken' do
    player.move('a2')
    expect {player.move('a2')}.to raise_error(RuntimeError, 'Move error')
  end

  it 'prints current board places occupied by player after each move' do
    player.move('a2')
    expect(player.move('c1')).to eq ['a2', 'c1']
  end
end
