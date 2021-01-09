require 'player'

describe Player do
  subject(:rachel) { Player.new('Rachel')}
  subject(:katie) { Player.new('Katie')}
  
  describe '#name' do
    it 'returns the name' do
      expect(rachel.name).to eq 'Rachel'
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(katie.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { rachel.receive_damage }.to change { rachel.hit_points }.by(-10)
    end
  end
end