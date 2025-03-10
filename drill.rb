h, w = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }

done = false
board.each_with_index do |row, y|
  row.each_with_index do |val, x|
    if val == "*"
      py = [y - 1, 0].max
      ny = [y + 1, h - 1].min
      px = [x - 1, 0].max
      nx = [x + 1, w - 1].min

      board[py][x] = '*'
      board[ny][x] = '*'
      board[y][px] = '*'
      board[y][nx] = '*'

      done = true
      break
    end
  end
  break if done
end

board.each { |row| puts row.join("") }