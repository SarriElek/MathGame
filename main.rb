require './game'
require './player'
require './turn'
require './question'

# q = Question.new
# puts q.question
# puts q.answer

player1 = Player.new("Player 1")
# puts player1.print_score
# player1.lose_life
# puts player1.print_score

# game = Game.new(player1)
# game.start_game

turn = Turn.new(player1)
turn.init_turn

