require 'game'


describe Game do

  subject(:game) {described_class.new}
  let(:player) {double :player, receive_damage: nil}

  describe '#attack' do
    it 'attacks a player' do
      expect(player).to receive(:receive_damage)
      game.attack(player)
    end
  end

end
