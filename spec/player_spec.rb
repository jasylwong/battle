require 'player'

describe Player do
  subject(:jason) { described_class.new("Jason") }
  subject(:liz) { described_class.new("Liz") }

  it 'returns a name' do
    expect(jason.name).to eq "Jason"
  end

  it 'returns initial HP' do
    expect(subject.health).to eq described_class::DEFAULT_HP
  end

end
