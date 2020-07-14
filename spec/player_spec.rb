require './lib/player'

describe Player do
  describe '#name' do
    it 'returns the correct name' do
      player = Player.new('Player1', 'X')
      expect(player.name).to eq('Player1')
    end
  end

  describe '#symbol' do
    it 'returns the correct symbol' do
      player = Player.new('Player1', 'X')
      expect(player.symbol).to eq('X')
    end
  end

end

