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

# def merge_sort(array)
#   return array if array.size <= 1

#   center = array.size / 2
#   left = merge_sort(array[0...center])
#   right = merge_sort(array[center..-1])

#   merge(left, right)
# end

# def merge(left, right)
#   sorted = []
#   while !left.empty? && !right.empty?
#     if left.first <= right.first
#       sorted << left.shift
#     else
#       sorted << right.shift
#     end
#   end

#   sorted + left + right
# end

# merge_sorted_array = merge_sort(array)
# puts "マージソート後：#{merge_sorted_array}"

# def quick_sort(array)
#   return array if array.size <= 1

#   pivot = array[0]

#   left = array[1..].select { |x| x <= pivot }
#   right = array[1..].select { |x| x > pivot }

#   quick_sort(left) + [pivot] + quick_sort(right)
# end

# quick_sorted_array = quick_sort(array)
# puts "クイックソート後：#{quick_sorted_array}"

# def bubble_sort(array)
#   size = array.size

#   size.times do
#     (0...size-1).each do |i|
#       if array[i] > array[i+1]
#         array[i], array[i+1] = array[i+1], array[i]
#       end
#     end
#   end
#   array
# end

# bubble_sorted_array = bubble_sort(array)
# puts "バブルソート後：#{bubble_sorted_array}"