class HangMan
  attr_reader :random_word, :number_of_guesses

  def initialize
    @random_word = start_game
    @number_of_guesses = 10
    p random_word
  end

  def function
    puts "this is a function with #{random_word}"
  end

  def start_game
    words_array = []
    File.open('google-10000-english.txt') do |file|
      file.readlines.each do |line|
        words_array << line.chomp
      end
    end
    words_array.select { |word| word.length > 5 }.sample
  end
end

def cipher(word)
  # cyphered_word = word
  # word.each_char { |char| cyphered_word.gsub(char, '_') }
  # puts cyphered_word
  cyphered_word = word.chars.map { |char| char == ' ' ? ' ' : '_' }.join
  puts cyphered_word
end

def decipher(character)
  indexes = []
  word = 'kalamanabububebe'
  ciphered_word = ''.rjust(word.length, '_')
  word.chars.each_with_index { |char, index| indexes << index if char == character }
  # ciphered_word.chars.map { |char| char == character ? character : '_' }
  indexes.index.map { |index| ciphered_word[index] = character }
  puts ciphered_word
end

# hangman = HangMan.new
cipher('fully working hangman cypherer')
decipher('a')

# create a message for when a user guesses a letter more than once, put all guesses in an array
