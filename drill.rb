h, w = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]

sy, sx = 0, 0
stop = false
board.each_with_index do |row, y|
  row.each_with_index do |val, x|
    if val == "*"
      max_y = [y - 1, 0].max
      min_y = [y + 1, h - 1].min
      min_x = [x - 1, 0].max
      max_x = [x + 1, w - 1].min

      validation_1 = board[max_y][x] != "#" && board[max_y][x] != "*"
      validation_2 = board[min_y][x] != "#" && board[min_y][x] != "*"
      validation_3 = board[y][min_x] != "#" && board[y][min_x] != "*"
      validation_4 = board[y][max_x] != "#" && board[y][max_x] != "*"
      if !validation_1 && !validation_2 && !validation_3 && !validation_4
        stop = true
        break
      end

      board[max_y][x] = "*"
      board[min_y][x] = "*"
      board[y][min_x] = "*"
      board[y][max_x] = "*"
      
    end
  end
end

queue = []

move.each do |y, x|
  ny = sy + y
  nx = sx + x
  validation = board[ny][nx] != "#" && board[ny][nx] != "*"
  if validation
    board[ny][nx] = "*"
    queue << [ny, nx]
  end
end


board.each do |row|
  puts row.join("")
end