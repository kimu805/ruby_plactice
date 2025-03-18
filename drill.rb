def insert_sort(array)
  (1...array.size).each do |i|
    key = array[i]
    j = i - 1

    while j >= 0 && array[j] > key
      array[j+1] = array[j]
      j -= 1
    end

    array[j+1] = key
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