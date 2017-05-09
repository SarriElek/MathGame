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
  @player.lose_life unless correct
  text = correct ? "#{@player.name}: #{@question.congratulate}" : "#{@player.name}: #{@question.punish}"
  puts text
  correct
end

end