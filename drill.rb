H, W, N = gets.split.map(&:to_i)

board = H.times.map { gets.chomp }
prompt = N.times.map { gets.split.map(&:to_i) }

prompt.each do |x, y|
  board[x][y] = "#"
end

board.each do |row|
  puts row
end