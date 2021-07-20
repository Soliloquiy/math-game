require "./player.rb"

class Turn
  def initialize(p1,p2)
    @p1 = p1
    @p2 = p2
  end

  def player_turn
    if @p1.turn == true
      @p1.turn = false
      @p2.turn = true
    elsif @p2.turn == true
      @p1.turn = true
      @p2.turn = false
    else 
      @p1.turn = true
    end
  end
end

# p1 = Player.new
# p2 = Player.new
# puts p1.turn
# puts p2.turn
# new_turn = Turn.new(p1,p2)
# new_turn.player_turn
# puts p1.turn
# puts p2.turn
# new_turn.player_turn
# puts p1.turn
# puts p2.turn