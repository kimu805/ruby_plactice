H, W, N = gets.split.map(&:to_i)

arr = []

H.times do 
  str = gets.chomp
  arr << str
end

prompt = N.times.map { gets.split.map(&:to_i) }

puts "----------------"

prompt.each do |x, y|
  puts arr[x][y]
end