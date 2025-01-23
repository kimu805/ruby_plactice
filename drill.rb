array = [64, 25, 12, 42, 11]

def heap_sort(array)
  size = array.size

  (size / 2 - 1).downto(0) do |i|
    heapify(array, size, i)
  end
end

def heapify(array, size, i)
  
end

heap_sorted_array = heap_sort(array)
puts "ヒープソート後：#{heap_sorted_array}"