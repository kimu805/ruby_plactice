h, w, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }
time_box = n.times.map { gets.to_i }

player = [[0, 0, 0]]
stop = false
board.each_with_index do |row, y|
  row.each_with_index do |val, x| 
    if val == "*"
      player[0] = [y, x, 0]
      stop = true
      break
    end
  end
  break if stop
end

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]
while !player.empty?
  y, x, time = player.shift
  board[y][x] = time_box.include?(time) ? "?" : "*"
  move.each do |t, s|
    ny = y + t
    nx = x + s
    if 0 <= ny && ny <= h - 1 && 0 <= nx && nx <= w - 1 && board[ny][nx] == "."
      player << [ny, nx, time + 1]
    end
  end
end

board.each do |row|
  puts row.join("")
end