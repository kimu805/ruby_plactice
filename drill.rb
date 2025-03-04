x, y, z = gets.split.map(&:to_i)

board =[]
z.times do 
  layer = []
  y.times do
    layer << gets.chomp.chars
  end
  gets
  board << layer
end

straight = []
(1..z).each do|z_i|
  (1..y).each do |y_i|
    x.downto(1) do |x_i|
      target = board[x_i][y_i][z_i]
      if target == "#"
        straight << target
      end
    end
  end
end

p straight