h, w = gets.split.map(&:to_i)
board = h.times.map { gets.chomp.split("") }

n = gets.chomp

names = ["A".to_sym, "B".to_sym]
players = { A: [[0,0]], b: [[0, 0]] }

board.each_with_index do |row, y|
  row.each_with_index do |val, x|
    next if val == "#" || val == "."
    sym = val.to_sym
    players[sym][0] = [y, x]
    board[y][x] = sym
  end
end

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]
turn = names.index(n.to_sym)
while !players[:A].empty? || players[:B].empty?
  name = names[turn % 2]
  players[name].length.times do 
    
  end
end