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
