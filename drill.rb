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

array = [5, 6, 7, 4, 1, 3, 4, 9, 14, 41, 341, 15, 55, 51, 554, 9, 154]

sorted_array = select_sort(array)

puts "ソート後：#{sorted_array}"