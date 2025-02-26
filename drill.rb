x, y, n = gets.split.map(&:to_i)

move = [
  {L: [-1, 0], R: [1, 0]},
  {L: [0, -1], R: [0, 1]},
  {L: [1, 0], R: [-1, 0]}, 
  {L: [0, 1], R: [0, -1]}
]

current_direct = 0

n.times do
  d = gets.chomp

  x += move[current_direct % 4][d.to_sym][0]
  y += move[current_direct % 4][d.to_sym][1]

  puts x.to_s + " " + y.to_s

  d == "L" ? current_direct -= 1 : current_direct += 1
end