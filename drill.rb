h, w = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]

done = false
board.each_with_index do |row, y|
  row.each_with_index do |val, x|
    if val == "*"
      move.each do |my, mx|
        ny = y + my
        nx = x + mx
        if 0 <= ny && ny <= h - 1 && 0 <= nx && nx <= w - 1 && board[ny][nx] != "#"
          board[ny][nx] = "*"
        end
      end
      done = true
      break
    end
  end
  break if done
end

board.each do |row|
  puts row.join("")
end