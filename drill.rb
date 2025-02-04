def cutbar(n, m, current_bar)
  if current_bar >= n
    0 
  elsif current_bar > m
    1 + cutbar(n, m, current_bar + m)
  else
    1 + cutbar(n, m, current_bar * 2)
  end
end

puts cutbar(20, 3, 1)