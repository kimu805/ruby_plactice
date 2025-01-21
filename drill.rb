array = [64, 25, 12, 22, 11]

# def select_sort(array)
#   size = array.size
#   size.times do |i|
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
# puts "ソート後：#{select_sorted_array}"

def bubble_sort(array)
  size = array.size
  size.times do
    (0...size - 1).each do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
      p array
    end
  end
  array
end

bubble_sorted_array = bubble_sort(array)
puts "ソート後：#{bubble_sorted_array}"