array = [64, 25, 12, 42, 11]

def heap_sort(array)
  size = array.size

  (size / 2 - 1).downto(0) do |i|
    heapify(array, size, i)
  end

  (size - 1).downto(1) do |i|
    array[0], array[i] = array[i], array[0]
    heapify(array, i, 0)
  end
  array
end

def heapify(array, size, i)
  largest = i
  left = 2 * i + 1
  right = 2 * i + 2

  if left < size && array[left] > array[largest]
    largest = left
  end

  if right < size && array[right] > array[largest]
    largest = right
  end

  if largest != i
    array[i], array[largest] = array[largest], array[i]
    heapify(array, size, largest)
  end
end

heap_sorted_array = heap_sort(array)
puts "ヒープソート後：#{heap_sorted_array}"