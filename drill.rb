h, w, sy, sx, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }
turns = n.times.map { gets.split.map.with_index { |val, index| index == 0 ? val.to_i : val } }
p turns

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]
now = 0

y, x = sy, sx
t, d = turns.shift
puts "-------------------"
100.times do |time|
  if time == t
    if d == "L"
      now -= 1
    else
      now += 1
    end
    t, d = turns.shift if !turns.empty?
  end

  ny = y + move[now % 4][0]
  nx = x + move[now % 4][1]
  if !(0 <= ny && ny <= h - 1 && 0 <= nx && nx <= w - 1 && board[ny][nx] != '#')
    puts "Stop"
    break
  end

  y, x = ny, nx
  puts y.to_s + " " + x.to_s

end