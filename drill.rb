def insert_sort(array)
  size = array.size
  size.times do |i|
    (i+1...size).each do |j|
      if array[i] > array[j]
        array[i], array[j] = array[j], array[i]
      end
    end
  end
  array
end

def binary_search(array, target)
  left = 0
  right = array.size - 1

  while left <= right
    center = (left + right) / 2
    if array[center] == target
      return center + 1
    elsif array[center] < target
      left = center + 1
    else
      right = center - 1
    end
  end
  return false
end

array = [63, 24, 52, 4, 82, 48]
sorted_array = insert_sort(array)
p sorted_array
target = gets.to_i
result = binary_search(sorted_array, target)

if result
  puts "#{target}は#{result}番目にあります"
else
  puts "#{target}はこの中にはありません。"
end