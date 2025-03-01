h, w, y, x, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp }

move = []
n.times do
  direction, distance = gets.split
  distance = distance.to_i
  hash = { direction => distance }
  move << hash
end