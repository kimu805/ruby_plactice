n, k = gets.split.map(&:to_i)

arr = []
n.times.map { arr << gets.split.map(&:to_i) }
arr.flatten!

index = []
k.times.map { index << gets.split.map(&:to_i) }
index.flatten!

puts "------"

index.each do |index|
  target_arr = arr[0..index-1]
  puts target_arr.sum
end