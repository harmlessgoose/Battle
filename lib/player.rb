class Player
  
  attr_reader :name, :strength
  attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = 100
    @strength = 10
  end

end