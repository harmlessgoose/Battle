require_relative '../lib/game'

describe Game do
  
  describe '#attack' do
    it 'damages the player' do
      player_1 = Player.new('Kathleen')
      player_2 = Player.new('Peter')
      expect {subject.attack(player_1, player_2)}.to change {player_2.hp}.by(-player_1.strength)
    end
  end

end