class Question

  attr_reader :active, :first_num, :second_num, :answer

  def initialize player
    @active = player
  end

  def num_gen
    @first_num = Random.new.rand(20)
    @second_num = Random.new.rand(20)
    @answer = first_num + second_num
  end

  def ask
    num_gen
    puts "What is #{@first_num} plus #{@second_num}"
    input = gets.chomp.to_i
    if input != @answer
        puts ''
        puts 'Wrong!'
        @active.wrong
        puts "#{@active.name} has #{@active.lives} lives left."
    else
        puts ''
        puts "#{active.name} is correct!"
        puts ''
    end
  end



end
