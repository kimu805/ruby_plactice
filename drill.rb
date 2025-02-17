n, k, s = gets.split.map(&:to_i)

big_array = Array.new
n.times do
  small_array = gets.split(" ")
  (1..2).each { |i| small_array[i] = small_array[i].to_i }
  big_array << small_array
end

moves = k.times.map { gets.to_i }

current = s - 1
spell = big_array[current][0]

moves.each do |move|
  current = big_array[current][move] - 1
  spell += big_array[current][0]
end

puts spell