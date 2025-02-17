n, k, s = gets.split.map(&:to_i)

big_array = Array.new
n.times do
  small_array = gets.split(" ")
  (1..2).each { |i| small_array[i] = small_array[i].to_i }
  big_array << small_array
end

p big_array

# k.times do
  
# end