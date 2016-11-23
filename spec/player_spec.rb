require 'player'

describe Player do

  subject(:agata) {described_class.new("Agata")}

  describe '#name' do
    it 'returns its name' do
      expect(agata.name).to eq "Agata"
    end
  end

end
