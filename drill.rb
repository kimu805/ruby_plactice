h, w, y, x, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp }

direction = %w[N E S W]
curr_direct = 0

n.times do
  direct, distance = gets.split
  distance = distance.to_i

  if 
  x += direct == direction[curr_direct % 4] ? -(distance) : distance


end