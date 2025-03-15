h, w = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]

player = [[0, 0]]
board.each_with_index { |row, y| row.each_with_index {|val, x| player[0] = [y, x] if val == "*" } }

while !player.empty?
  player.size.times do |i|
    target = player.shift
    move.each do |y, x|
      ny = target[0] + y
      nx = target[1] + x
      if 0 <= ny && ny <= h - 1 && 0 <= nx && nx <= w - 1 && board[ny][nx] != "#"
        player << [ny, nx]
        board[ny, nx] = i + 1
      end
    end
  end
end

board.each do |row|
  puts row.join("")
end