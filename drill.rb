h, w = gets.split.map(&:to_i)
board = h.times.map{ gets.chomp.split("") }

player = [[0, 0]]
board.each_with_index do |row, y|
  row.each_with_index do |val, x|
    player[0] = [y, x] if val == "*"
  end
end

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]
while !player.empty?
  y, x = player.shift
  board[y][x] = "*"
  move.each do |t, s|
    ny = y + t
    nx = x + s
    if 0 <= ny && ny <= h - 1 && 0 <= nx && nx <= w - 1 && board[ny][nx] != '#' && board[ny][nx] != '*'
      player.push [ny, nx]
    end
  end
end

board.each { |row| puts row.join("") }