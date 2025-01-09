def lone_sum(array)
  unique_numbers = array.select { |number| array.count(number) == 1 }
  puts unique_numbers.sum
end

lone_sum([1, 2, 3])
lone_sum([3, 2, 3])
lone_sum([3, 3, 3])