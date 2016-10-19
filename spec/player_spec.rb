require 'player'

describe Player do
  subject(:player) {described_class.new('x')}

  it 'can be initialized with a name' do
    expect(player.name).to eq 'x'
  end
end
