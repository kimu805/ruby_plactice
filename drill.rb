n, k = gets.split.map(&:to_i)

arr = n.times.flat_map { gets.split.map(&:to_i) }
section = k.times.map { gets.split.map { |x| x.to_i - 1 } }

puts "-----"

section.each do |l, r|
  puts arr[l..r].sum
end