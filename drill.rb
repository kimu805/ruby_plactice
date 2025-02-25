y, x, n = gets.split.map(&:to_i)

directions = n.times.map { gets.chomp }

directions.each do |direction|
  case direction
  when "N"
    y -= 1
  when "E"
    x += 1
  when "S"
    y += 1
  when "W"
    x -= 1
  end
  puts y.to_s + " " + x.to_s
end