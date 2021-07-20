class Player
  attr_accessor :turn, :score

  def initialize()
    @turn = false
    @score = 3
  end
end

# p1 = Player.new