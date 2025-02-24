h, w = gets.split.map(&:to_i)

board = h.times.map { gets.split("") }

board.each_with_index do |row, y|
  row.each_with_index { |val, x| puts y.to_s + " " + x.to_s if val == "#"}
end