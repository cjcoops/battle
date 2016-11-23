class Player

  attr_reader :name, :points
  MAX_POINTS = 60
  def initialize(name )
    @name = name
    @points = MAX_POINTS
  end

  def receive_damage
    @points -= 10
  end

end
