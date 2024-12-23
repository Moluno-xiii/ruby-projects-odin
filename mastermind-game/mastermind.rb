class MasterMind
  COLOR_ARRAY = %w[red blue green yellow orange purple pink black white grey brown turquoise silver gold copper bronze
                   peach magenta cyan teal coral lime maroon burgundy violet indigo sapphire emerald ruby amber honey cream beige lemon]
  attr_reader :random_color, :number_of_guesses

  def initialize
    @random_color = COLOR_ARRAY.sample(3)
    @number_of_guesses = 12
    puts "Available colors are #{COLOR_ARRAY} guess 3 colors"
  end

  def new_game
    while number_of_guesses.positive?
      result = guess.split

      return 'You guessed right, you win!!' if result == random_color

      check_input?(result)
      puts "You guessed wrong, you have #{number_of_guesses} guesses left #{check_input?(result)}"
    end

    return unless number_of_guesses.zero?

    puts "You're out of guesses, You Lose! the correct answer was #{random_color}"
  end

  private

  def guess
    @number_of_guesses -= 1
    gets.chomp
  end

  def check_input?(input)
    correct_positions = 0
    correct_colors = 0

    random_color.each_with_index do |color, color_index|
      color == input[color_index] ? correct_positions += 1 : nil
    end

    input.each do |color_input|
      random_color.include?(color_input) ? correct_colors += 1 : nil
    end

    final_result = { correct_colors: correct_colors, correct_positions: correct_positions }

    "You have #{final_result[:correct_colors]} colors correct and #{final_result[:correct_positions]} positions correct"
  end
end

MasterMind.new.new_game
