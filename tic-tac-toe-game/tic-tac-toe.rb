class TicTacToe
  attr_accessor :name, :game_array

  WINNER_ARRAY = [[1, 2, 3], [1, 5, 9], [1, 4, 7], [2, 5, 8], [3, 5, 7], [3, 6, 9], [4, 5, 6], [7, 8, 9]]
  STARTING_ARRAY = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

  def initialize
    @name = gets.chomp
    @game_array = STARTING_ARRAY
    puts name
  end

  def loop_array
    STARTING_ARRAY.each { |array| p array }
  end

  def player_move(row, position)
    game_array[row - 1][position - 1] = 0
    loop_array
  end
end

# player1 = TicTacToe.new('player 1')
# player2 = TicTacToe.new('player 2')

# player2.player_move(2, 3)
# player2.loop_array
TicTacToe.new
