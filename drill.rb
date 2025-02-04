def cutbar(n, m, current_bar)
  if current_bar >= n
    0 
  elsif current_bar > m
    1 + cutbar(n, m, current_bar + m)
  else
    1 + cutbar(n, m, current_bar * 2)
  end
  array
end

bubble_sorted_array = bubble_sort(array)
puts "バブルソート後：#{bubble_sorted_array}"