h, w = gets.split.map(&:to_i)
board = h.times.map { gets.split("") }

board.each.with_index do |row, y|
  row.each_index do |x|
    flag_row = false
    flag_clm = false

    if x == 0 || row[x-1] == "#"
      flag_row = true if x == w - 1 || row[x+1] == "#"
    end

    if y == 0 || board[y-1][x] == "#"
      flag_clm = true if y == h - 1 || board[y+1][x] == "#"
    end

    puts y.to_s + " " + x.to_s if flag_row && flag_clm
  end
end