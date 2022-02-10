class Player
  
  attr_reader :name 
  attr_accessor :hp


  def initialize(name)
    @name = name
    @hp = 100
    @attack = 10
  end

  # def attacked_by(attack_value)
  #   @hp -= attack_value
  # end
# 
  def attacks(opponent)
    opponent.hp -= @attack
  end
end