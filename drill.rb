h, w = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }

player = [[0, 0]]
board.each_with_index do |row, y|
  row.each_with_index { |val, x| player[0] = [y, x] if val == "*" }
end

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]
while !player.empty?
  y, x = player.shift
  board[y][x] = "*"

  
end