# h, w, x, y, m = gets.split.map.with_index { |val, i| i != 4 ? val.to_i : val }

# board = h.times.map { gets.chomp }
# move = {"N": -1, "E": 1, "S": 1, "W": -1}

# case m
# when "N", "S"
#   new_y = y + move[m.to_sym]
#   target = board[new_y][x] if new_y.between?(0, h-1)
# when "E", "W"
#   new_x = x + move[m.to_sym]
#   target = board[y][new_x] if new_x.between?(0, w-1)
# end

# p target

# if target == "#"
#   puts "No"
# else
#   puts "Yes"
# end
# 入力値の m 以外を整数に変換
h, w, sy, sx, m = gets.split.map.with_index { |val, i| i != 4 ? val.to_i : val }
board = h.times.map { gets.chomp.split('') }

move = { N: [-1, 0], E: [0, 1], S: [1, 0], W: [0, -1] }

ny = sy + move[m.to_sym][0]
nx = sx + move[m.to_sym][1]

p board[ny][nx]

if 0 <= ny && ny <= h - 1 && 0 <= nx && nx <= w - 1 && board[ny][nx] != '#'
  puts 'Yes'
else
  puts 'No'
end