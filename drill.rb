def find_n(x)
  n = 1
  factorial = 1

  while factorial != x
    n += 1
    factorial *= n
  end

  n
end


x = gets.to_i
puts find_n(x)