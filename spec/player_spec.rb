require 'player'

describe Player do
    subject(:jai) { Player.new('Jai') }

    it 'should return its name' do
        expect(subject.name).to eq('Jai')
    end
end
