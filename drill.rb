x, y, n = gets.split.map(&:to_i)

move = [[1, 0], [0, 1], [-1, 0], [0, -1]]
turned = 0
width = 0
count = -1

n.times do |time|
  if time - turned == width
    turned = time
    count += 1
    if count % 4 == 0 || count % 4 == 2
      width += 1
    end
  end

  x += move[count % 4][0]
  y += move[count % 4][1]
end

puts x.to_s + " " + y.to_s