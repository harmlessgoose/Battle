class Game

  def attack(attacker, opponent)
    opponent.hp -= attacker.strength
  end

end