array = [64, 25, 12, 42, 11]

def insert_sort(array)
  return array if array.size <= 1

  
end

insert_sorted_array = insert_sort(array)
puts "挿入ソート後：#{insert_sorted_array}"