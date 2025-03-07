h, w, sy, sx, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp }
turns = n.times.map { gets.split.map.each_with_index {|val, index| index == 0 ? val.to_i : val} }

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]
now = 0

logs = [[sy, sx]]
board[sy][sx] = "*"
y, x = sy, sx
t, d = turns.shift
100.times do |time|
  if t == time
    if d == "L"
      now -= 1
    else
      now += 1
    end
    t, d = turns.shift
  end

  ny = y + move[now % 4][0]
  nx = x + move[now % 4][1]
  if !(0 <= nx && nx <= w - 1 && 0 <= ny && ny <= h - 1 && board[ny][nx] != "#" && !logs.include?([ny, nx]))
    break
  end

  y, x = ny, nx
  logs << [y, x]
  board[y][x] = "*"
end

board.each do |row|
  puts row
end