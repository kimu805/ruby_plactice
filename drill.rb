def near_ten(number)
  total = (number / 100) + (number / 10 % 10) + (number % 10)
  x_ten = total.round(-1)
  
  diff = (total - x_ten).abs

  if diff <= 2
    p "True"
  else
    p "10の倍数との差は#{diff}です"
  end
end

near_ten(117)
near_ten(123)
near_ten(111)