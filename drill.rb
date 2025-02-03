array = [22, 58, 4, 61, 1]

def bubble_sort(array)
  size = array.size
  size.times do
    (0...size-1).each do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
  end
  array
end

bubble_sorted_array = bubble_sort(array)
puts "バブルソート後：#{bubble_sorted_array}"