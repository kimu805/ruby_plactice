y, x, D = gets.split
y = y.to_i
x = x.to_i

directions = { N: [-1, 1], E: [-1, 1], S: [1, -1], W: [1, -1] }
d = gets.chomp

case D
when "N" || "S"
  x += d == "L" ? directions[D.to_sym][0] : directions[D.to_sym][1]
when "E" || "W" 
  y += d == "L" ? directions[D.to_sym][0] : directions[D.to_sym][1]
end

puts y.to_s + " " + x.to_s