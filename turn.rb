class Turn

def initialize(player)
  @player = player
  @question = Question.new
end

def init_turn
  puts "----- NEW TURN  -----"
  puts "#{@player.name}: #{@question.ask_question}"
  answer = gets.chomp.to_i
  correct = @question.right_answer?(answer)
  text = correct ? "#{@player.name}: #{@question.congratulate}" : "#{@player.name}: #{@question.punish}"
  puts text
end

end