class Player
  attr_reader :name, :lives
  def initialize(name)
    @name = "Player #" + name
    @lives = 3
  end

  def wrong
    @lives -= 1
  end
end
