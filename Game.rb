require './player'
require './Questions'

class Game
  def initialize
    @p1 = Player.new(1.to_s)
    @p2 = Player.new(2.to_s)
  end

  def play
    active = @p1
    while !game_end
      puts ''
      puts "Player 1: #{@p1.lives}  | Player 2: #{@p2.lives}"
      puts ''
      puts "--------#{active.name}'s Turn---------"
      puts ''
      question = Question.new(active)
      question.ask
      if active == @p1
        active = @p2
      else
        active = @p1
      end
    end
    puts "Game over #{active.name} wins"
  end

  def game_end
    @p1.lives == 0 || @p2.lives == 0
  end

end
