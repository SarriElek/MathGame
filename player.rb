class Player

INITIAL_LIVES = 3

attr_reader :name, :short_name, :lives

def initialize(name, short_name)
  @name = name
  @short_name = short_name
  @lives = INITIAL_LIVES
end

def lose_life
  @lives -= 1
end

def print_score
  "#{@short_name}: #{@lives}/#{INITIAL_LIVES}"
end

end