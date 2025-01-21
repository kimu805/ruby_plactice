def select_sort(array)
  size = array.size
  size.times do |i|
    min_index = i
    (i+1...size).each do |j|
      if array[j] < array[min_index]
        min_index = j
      end
    end
    array[i], array[min_index] = array[min_index], array[i]
  end
  array
end

def bubble_sort(array)
  size = array.size
  size.times do
    (0...size - 1).each do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
  end
  array
end

array = [5, 6, 7, 4, 1, 3, 4, 9, 14, 41, 341, 15, 55, 51, 554, 9, 154]

select_sorted_array = select_sort(array)
puts "ソート後：#{select_sorted_array}"

p array

bubble_sorted_array = bubble_sort(array)
puts "ソート後：#{bubble_sorted_array}"