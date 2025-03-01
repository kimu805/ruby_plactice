h, w, y, x, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp }

directions = []
move = []
n.times do
  direction, distance = gets.split
  distance = distance.to_i
  arr = [direction, distance]
  move << arr
end

move.each do |d, num|

end