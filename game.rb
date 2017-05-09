class Game

  def initialize(*player)
    @finished = false
    @current_user = player[0]
    @players = *player
  end

  def start_game
    while !@finished
      turn = Turn.new(@current_user)
      turn.init_turn
      puts "#{@current_user.print_score_name} vs #{next_user.print_score_name}"
      @finished = game_finished?
      @current_user = next_user
    end
    print_final_score
    puts "----- GAME OVER -----"
  end

  def game_finished?
    @players.one? { |player| player.lives == 0}
  end

  def next_user
    @players.find {|player| player.name != @current_user.name}
  end

  def print_final_score
    puts "#{@current_user.name} wins with a score of #{@current_user.print_score}"
  end

end