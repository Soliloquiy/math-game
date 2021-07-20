require "./questions.rb"
require "./turn.rb"
require "./player.rb"

class Score
  attr_accessor :correct

  def initialize(p1,p2)
    @p1 = p1
    @p2 = p2
    @correct = nil
  end

  def set_score
    if @p1.turn && !@correct
      @p1.score -= 1
    elsif @p2.turn && !@correct
      @p2.score -= 1
    end
  end

  def round_end
    if @p1.score == 0
      puts "Player 2 wins with a score of #{@p2.score}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    elsif @p2.score == 0
      puts "Player 1 wins with a score of #{@p1.score}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    elsif @p1.score > 0 && @p2.score > 0
    puts "P1: #{@p1.score}/3 vs P2: #{@p2.score}/3"
    puts "----- NEW TURN -----"
    end
  end
end

# p1 = Player.new
# p2 = Player.new
# p1.turn = true
# score = Score.new(p1,p2)
# score.correct = false
# puts p1.score
# score.set_score
# puts p1.score
# puts p2.score
# p1.score = 2
# score.round_end