y, x, n = gets.split.map(&:to_i)

move = { N: [-1, 0], S: [1, 0], E: [0, 1], W: [0, -1] }

n.times do
  d = gets.chomp
  y += move[d.to_sym][0]
  x += move[d.to_sym][1]

  puts y.to_s + " " + x.to_s
end