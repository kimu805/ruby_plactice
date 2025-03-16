h, w = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]

player = [[0, 0]]
stop = false
board.each_with_index do |row, y|
  row.each_with_index do |val, x|
    if val == "*"
      player[0] = [y, x]
      board[y][x] = 0
      stop = true
      break
    end
  end
  break if stop
end

i = 1
while !player.empty?
  size = player.size
  size.times do
    target = player.shift
    move.each do |y, x|
      ny = target[0] + y
      nx = target[1] + x
      if 0 <= ny && ny <= h - 1 && 0 <= nx && nx <= w - 1 && board[ny][nx] == "."
        player << [ny, nx]
        board[ny][nx] = i
        # binding.irb
      end
    end
  end
  i += 1
end

board.each do |row|
  puts row.join("")
end