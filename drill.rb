array = [64, 25, 12, 42, 11]

def heap_sort(array)
  size = array.size

  (size / 2 - 1).downto(0) do |i|
    heapify(array, size, i)
  end

  (size - 1).downto(1) do |i|
    array[0], array[i] = array[i], array[0]
    heapify(array, size, 0)
  end

  array
end

def heapify(array, size, i)
  largest = i
  left_child = 2 * i + 1
  right_child = 2 * i + 2

  if left_child < size && array[left_child] > array[largest]
    largest = left_child
  end

  if right_child < size && array[right_child] > array[largest]
    largest = right_child
  end

  if largest != i
    array[i], array[largest] = array[largest], array[i]
    heapify(array, size, largest)
  end
end

heap_sorted_array = heap_sort(array)
puts "ヒープソート後：#{eap_sorted_array}"