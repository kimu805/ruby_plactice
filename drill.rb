h, w = gets.split.map(&:to_i)
board = h.times.map { gets.chomp }

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]

sy, sx = 0
h.times do |y|
  w.times do |x|
    if board[y][x] == "*"
      sy, sx = y, x
      break
    end
  end
end

move.each do |y, x|
  ny = sy + y
  nx = sx + x
  if 0 <= ny && ny <= h - 1 && 0 <= nx && nx <= w - 1
    board[ny][nx] = "*" 
  end
end

board.each do |row|
  puts row
end