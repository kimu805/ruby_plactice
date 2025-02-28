h, w, y, x, d, m = gets.split.map.with_index { |val, index| index < 4 ? val.to_i : val}
board = h.times.map { gets.chomp }

move = [
  {L: [-1, 0], R: [1, 0]},
  {L: [0, -1], R: [0, 1]},
  {L: [1, 0], R: [-1, 0]},
  {L: [0, 1], R: [0, -1]},
]
directions = {N: 0, E: 1, S: 2, W: 3}
curr_d = directions[d.to_sym]

x += move[curr_d][m.to_sym][0]
y += move[curr_d][m.to_sym][1]

if x >= 0 && x <= w - 1 && y >= 0 && y <= h - 1 && board[y][x] != "#"
  puts "Yes"
else
  puts "No"
end