array = [64, 25, 12, 42, 11]

# def insert_sort(array)
#   (1...array.size).each do |i|
#     key = array[i]
#     j = i - 1

#     while j >= 0 && array[j] > key
#       array[j+1] = array[j]
#       j -= 1
#     end

#     array[j+1] = key
#   end
#   array
# end

# insert_sorted_array = insert_sort(array)
# puts "挿入ソート後：#{insert_sorted_array}"

# def select_sort(array)
#   size = array.size

#   (0...size).each do |i|
#     min_index = i
#     (i+1...size).each do |j|
#       if array[j] < array[min_index]
#         min_index = j
#       end
#     end
#     array[i], array[min_index] = array[min_index], array[i]
#   end
#   array
# end

# select_sorted_array = select_sort(array)
# puts "選択ソート後：#{select_sorted_array}"

