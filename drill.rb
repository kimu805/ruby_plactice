h, w, n = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }

player = [[0, 0, 0]]
stop = false
board.each_with_index do |row, y|
  row.each_with_index do |val, x| 
    if val == "*"
      player[0] = [y, x, 0]
      stop = true
      break
    end
  end
  break if stop
end

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]