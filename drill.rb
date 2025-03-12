h, w = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]

sy, sx = 0, 0
board.each_with_index do |row, y|
  row.each_with_index do |val, x|
    if val == "*"
      sy, sx = y, x
      break
    end
  end
end

queue = []

move.each do |y, x|
  ny = sy + y
  nx = sx + x
  if 0 <= ny && ny <= h - 1 && 0 <= nx && nx <= w - 1 && board[ny][nx] != "#" && board[ny][nx] != "*"
    board[ny][nx] = "*"
    queue << [ny, nx]
  end
end


board.each do |row|
  puts row.join("")
end