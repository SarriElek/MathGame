class Player

INITIAL_LIVES = 3

def initialize(name)
  @name = name
  @lives = INITIAL_LIVES
end

def lose_life
  @lives -= 1
end

def print_score
  "#{@name} #{@lives}/#{INITIAL_LIVES}"
end

end