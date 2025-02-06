def select_sort(array)
  size = array.size

  size.times do |i|
    min_index = i
    (i+1...size).each do |j|
      if array[min_index] > array[j]
        min_index = j
      end
    end

    if min_index != i
      array[i], array[min_index] = array[min_index], array[i]
    end
  end

  array
end

array = [94, 34, 58, 80, 26]

select_sorted_array = select_sort(array)
puts "選択ソート後：#{select_sorted_array}"