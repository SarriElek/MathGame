class Question

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def question
    "What does #{@number1} plus #{@number2} equal?"
  end

  def answer
    @number1 + @number2
  end

end