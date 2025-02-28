h, w, y, x, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp }

move = [
  {L: [-1, 0], R: [1, 0]},
  {L: [0, -1], R: [0, 1]},
  {L: [1, 0], R: [-1, 0]},
  {L: [0, 1], R: [0, -1]}
]

curr_d = 0

l_or_r = n.times.map { gets.chomp }

l_or_r.each do |lr|
  next_x = x + move[curr_d % 4][lr.to_sym][0]
  next_y = y + move[curr_d % 4][lr.to_sym][1]

  if next_x >= 0 && next_x <= w - 1 && next_y >= 0 && next_y <= h - 1 && board[next_y][next_x] != "#"
    curr_d += lr == "L" ? -1 : 1
    y, x = next_y, next_x
    puts y.to_s + " " + x.to_s
  else
    puts "Stop"
    break
  end
end