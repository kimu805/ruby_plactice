h, w, sy, sx, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }
turns = n.times.map { gets.split.map.with_index { |val, index| index == 0 ? val.to_i : val } }

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]
now = 0

y, x = sy, sx
t, d = turns.shift
100.times do |time|
  if time == t
    if d == "L"
      now -= 1
    else
      now += 1
    end
    t, d = turns.shift if !turns.empty?
  end
