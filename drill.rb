def calculate_points(amount, is_birthday)
  rate = amount >= 1000 ? 0.05 : 0.03
  point = amount * rate
  point *= 5 if is_birthday
  puts "ポイントは#{ point.floor }点です"
end

calculate_points(500, false) 
calculate_points(2000, false) 
calculate_points(3000, true) 
