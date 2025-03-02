h, w, sy, sx, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }

move = [[-1, 0], [0, 1], [1, 0], [0, -1]] # (y, x)
now = 0

y, x = sy, sx
n.times do
  direction, distance = gets.split.map.with_index { |val, index| index == 1 ? val.to_i : val }

  if direction == "L"
    now -= 1
  else
    now += 1
  end

  stop = false
  board[y][x] = "*"
  distance.times do
    ny = y + move[now % 4][0]
    nx = x + move[now % 4][1]
    if !(0 <= ny && ny <= h - 1 && 0 <= nx && nx <= w - 1 && board[ny][nx] != "#")
      stop = true
      break
    end

    y, x = ny, nx
    board[y][x] = "*"
  end

  if stop
    break
  end
end

board.each do |row|
  p row
end