def is_loop(n)
  check = n * 3 + 1
  while check != 1 do
    check = check.even? ? check / 2 : check * 3 + 1
    return true if check == n
  end
  return false
end

change(1000, [500, 100, 50, 10], 15)
puts @cnt