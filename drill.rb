a = gets.to_i

b, c = gets.split(" ").map(&:to_i)

s = gets.chomp

add_result = a + b + c

puts "#{add_result} #{s}"