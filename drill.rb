h, w, sy, sx, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }
turns = n.times.map { gets.split.map.with_index { |val, index| index == 0 ? val.to_i : val } }