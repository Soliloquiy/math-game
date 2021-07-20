require "./questions.rb"
require "./turn.rb"
require "./player.rb"
require "./score.rb"

def begin_game
  p1 = Player.new
  p2 = Player.new


  turn = Turn.new(p1,p2)
  score = Score.new(p1,p2)

  while p1.score > 0 && p2.score > 0
    turn.player_turn
    if p1.turn
      puts "Player1: "
    else 
      puts "Player 2: "
    end
    question = Questions.new
    score.correct = question.ask_question
    score.set_score
    score.round_end
  end
end

begin_game
