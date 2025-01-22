array = [64, 25, 12, 42, 11]

def quick_sort(array)
  return array if array.size <= 1

  pivot = array[0]

  left = array[1..].select { |x| x <= pivot }
  right = array[1..].select { |x| x > pivot }

  quick_sort(left) + [pivot] + quick_sort(right)
end

quick_sorted_array = quick_sort(array)
puts "クイックソート後：#{quick_sorted_array}"