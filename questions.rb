class Questions

  def initialize()
    @rand1 = rand(1..20)
    @rand2 = rand(1..20)
    @question = "What does #{@rand1} plus #{@rand2} equal?"
    @answer = @rand1 + @rand2
    @user_input = nil
  end

  def ask_question
    puts @question
    @user_input = gets.chomp.to_i
    if @user_input == @answer
      puts "YES! You are correct."
      true
    else
      puts "Seriously? No!" 
      false
    end
  end
end

# q = Questions.new
# puts q.ask_question