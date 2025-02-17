n, k, s = gets.split.map(&:to_i)

big_array = Array.new
n.times do
  small_array = gets.split(" ")
  (1..2).each { |i| small_array[i] = small_array[i].to_i }
  big_array << small_array
end

str = []
str << big_array[s-1][0]
k.times do
  m = gets.to_i
  current_array = big_array.select { |sub| sub.include?(str[-1]) }.flatten
  next_array_number = current_array[m] - 1
  str << big_array[next_array_number][0]
end

puts str.join