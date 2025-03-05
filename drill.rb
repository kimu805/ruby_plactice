h, w, sy, sx, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp }

move = [[-1, 0], [0, 1], [1, 0], [0, -1]] # (y, x)
now = 0

y, x = sy, sx
t = 0
n.times do
  time, direct = gets.split.map.with_index { |val, index| index == 0 ? val.to_i : val }

  stop = false
  
  while t != time
    ny = y + move[now % 4][0]
    nx = x + move[now % 4][1]
    if !(0 <= ny && ny < h && 0 <= nx && nx < w && board[ny][nx] != "#")
      stop = true
      break
    end

    y, x = ny, nx
    puts y.to_s + " " + x.to_s
    t += 1
  end

  if stop
    puts "Stop"
    break
  end

  if direct == "L"
    now -= 1
  else
    now += 1
  end
end