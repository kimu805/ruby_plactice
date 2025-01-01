def near_ten(number)
  x_ten = number.round(-1)
  diff = (number - x_ten).abs

  if diff <= 2
    puts "#{x_ten} : #{diff} : True"
  else
    puts "#{x_ten} : #{diff} : False"
  end
end

near_ten(12)
near_ten(17)
near_ten(19)