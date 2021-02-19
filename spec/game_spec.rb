require 'game'

describe Game do
  subject(:new_game) { Game.new }
  subject(:jai) { Player.new('Jai') }
  subject(:adam) { Player.new('Adam') }

  describe '#attack' do
    it 'respond to attack method' do
      expect(adam).to receive(:receive_damage)
      new_game.attack(adam)
    end
  end

end
