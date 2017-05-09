class Question

  @@congratulations = ["Way to go!", "Keep up the good work"]
  @@punishments = ["Seriously? No!", "ZOMG No NO NOOO"]

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def ask_question
    "What does #{@number1} plus #{@number2} equal?"
  end

  def right_answer?(answer)
    answer == (@number1 + @number2)
  end

  def congratulate
    @@congratulations.sample
  end

  def punish
    @@punishments.sample
  end

end