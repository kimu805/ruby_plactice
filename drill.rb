n, k = gets.split.map(&:to_i)

arr = n.times.flat_map { gets.split.map(&:to_i) }
index = k.times.flat_map { gets.split.map(&:to_i) }

puts "--------"

index.each do |idx|
  puts arr[0...idx].sum
end