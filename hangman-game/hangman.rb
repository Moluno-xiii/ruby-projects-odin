class HangMan
  attr_reader :random_word, :number_of_guesses, :ciphered_word, :guessed_words

  def initialize
    @random_word = init_random_word
    @ciphered_word = ''.rjust(random_word.length, '_')
    @number_of_guesses = 25
    @guessed_words = []
  end

  def start_game
    while number_of_guesses.positive?
      return puts "You win! \n the correct word is #{random_word}" if ciphered_word == random_word

      result = guess
      check_input?(result)
    end

    return unless number_of_guesses.zero?

    puts "You're out of guesses, you lose! :( \n The correct answer was #{random_word}"
  end

  def guess
    @number_of_guesses -= 1
    gets.chomp.downcase
  end

  def check_input?(result)
    return puts "You already guessed #{result}" if guessed_words.include?(result)

    # if guessed_words.include?(result)
    #   puts "you already guessed #{result} #{guessed_words}"
    if random_word.include?(result)
      puts ciphered_word
      puts 'you guessed right! :)'
      decipher(result)
    else
      puts "You guessed wrong! :(, you have #{number_of_guesses} guesses remaining"

    end
    guessed_words << result
  end

  private

  def init_random_word
    words_array = []
    File.open('google-10000-english.txt') do |file|
      file.readlines.each do |line|
        words_array << line.chomp
      end
    end
    words_array.select { |word| word.length > 5 && word.length < 13 }.sample
  end

  def decipher(character)
    random_word.chars.each_with_index do |char, index|
      char == character ? ciphered_word[index] = character : nil
      # ciphered_word[index] = char == character ? character : '_'
    end
    puts ciphered_word
    ciphered_word
  end
end

HangMan.new.start_game
