class Gomoku
  BOARD_SIZE = 5
  WIN_CONDITION = 5

  def initialize
    @board = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE, '.') }
    @current_player = 'X'
  end

  def play
    loop do
      print_board
      puts "Player #{@current_player}, enter your move (row and column, separated by a space):"
      row, col = gets.chomp.split.map(&:to_i)

      if valid_move?(row, col)
        make_move(row, col)
        if winner?(row, col)
          print_board
          puts "Player #{@current_player} wins!"
          break
        elsif board_full?
          print_board
          puts "It's a draw!"
          break
        end
        switch_player
      else
        puts "Invalid move. Try again."
      end
    end
  end

  private

  def print_board
    @board.each { |row| puts row.join(' ') }
  end

  def valid_move?(row, col)
    row.between?(0, BOARD_SIZE - 1) && col.between?(0, BOARD_SIZE - 1) && @board[row][col] == '.'
  end

  def make_move(row, col)
    @board[row][col] = @current_player
  end

  def switch_player
    @current_player = @current_player == 'X' ? 'O' : 'X'
  end

  def board_full?
    @board.all? { |row| row.none? { |cell| cell == '.' } }
  end

  def winner?(row, col)
    directions = [[1, 0], [0, 1], [1, 1], [1, -1]]

    directions.any? do |dr, dc|
      count_stones(row, col, dr, dc) + count_stones(row, col, -dr, -dc) - 1 >= WIN_CONDITION
    end
  end

  def count_stones(row, col, dr, dc)
    count = 0
    player = @current_player

    loop do
      break unless row.between?(0, BOARD_SIZE - 1) && col.between?(0, BOARD_SIZE - 1) && @board[row][col] == player

      count += 1
      row += dr
      col += dc
    end

    count
  end
end

# ゲームの実行
game = Gomoku.new
game.play
