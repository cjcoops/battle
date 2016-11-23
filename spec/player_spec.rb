require 'player'

describe Player do

  subject(:agata) {described_class.new("Agata")}
  subject(:chris) {described_class.new("Chris")}
  describe '#name' do
    it 'returns its name' do
      expect(agata.name).to eq "Agata"
    end
  end

  describe '#points'do
    it "starts with 60 points" do
      expect(agata.points).to eq described_class::MAX_POINTS
    end
  end

  describe '#receive_damage' do
    it "reduces the points after attack" do
      expect{chris.receive_damage}.to change{chris.points}.by(-10)
    end
  end

  # describe "#attack" do
  #   it 'damages the player' do
  #     expect(chris).to receive(:receive_damage)
  #     agata.attack(chris)
  # #   end
  #
  # end
end
