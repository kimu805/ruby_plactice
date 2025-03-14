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

array = [64, 25, 12, 48, 11]
sorted_array = insert_sort(array)
puts "挿入ソート後：#{sorted_array.join(" ")}"
