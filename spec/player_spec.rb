require_relative '../lib/player'

describe Player do

  subject(:player1) { Player.new('Kathleen')}
  
  describe '#name' do
    it "Should return it's name" do
      expect(player1.name).to eq 'Kathleen'
    end
  end

end