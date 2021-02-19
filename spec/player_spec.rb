require 'player'

describe Player do
  subject(:jai) { Player.new('Jai') }
  subject(:adam) { Player.new('Adam') }
  it 'should return its name' do
      expect(jai.name).to eq('Jai')
  end

  describe '#attack' do
    it 'respond to attack method' do
      expect(adam).to receive(:receive_damage)
      jai.attack(adam)
    end
  end

  describe '#receive_damage' do
    it 'removes 10 hp from player hp' do
      adam.receive_damage
      expect(adam.hp).to eq(50)
    end
  end

end
