def drop_blocks(board)
  # 各列ごとにブロックを下に落とす
  (0...5).each do |col|
    # 現在の列のブロックを集めて、下に落とす
    blocks = board.map { |row| row[col] }.reject { |x| x == '.' }
    # 下から順に詰めていく
    blocks = ['.'] * (board.length - blocks.length) + blocks
    # 新しい列を更新
    (0...board.length).each do |row|
      board[row][col] = blocks[row]
    end
  end
end

def erase_blocks(board)
  # 盤面に消去されるブロックを記録する
  to_erase = Array.new(board.length) { Array.new(5, false) }
  
  # 各セルについて、隣接セルが同じ数字かを確認
  (0...board.length).each do |i|
    (0...5).each do |j|
      next if board[i][j] == '.'
      
      # 上下左右の隣接セルを確認
      neighbors = [
        [i-1, j], [i+1, j], [i, j-1], [i, j+1]
      ]
      
      # すべての隣接セルが同じ値か確認
      if neighbors.all? { |x, y| x >= 0 && x < board.length && y >= 0 && y < 5 && board[x][y] == board[i][j] }
        to_erase[i][j] = true
      end
    end
  end
  
  # 消去するブロックを削除
  any_erase = false
  (0...board.length).each do |i|
    (0...5).each do |j|
      if to_erase[i][j]
        board[i][j] = '.'
        any_erase = true
      end
    end
  end
  
  any_erase
end

def process_board(board)
  loop do
    # 1回の消去と落下
    erased = erase_blocks(board)
    drop_blocks(board) if erased
    break unless erased
  end
  board
end

# 入力を受け取る
h = gets.to_i
board = []
h.times do
  board << gets.chomp.chars
end

# 盤面の処理を行う
result_board = process_board(board)

# 結果を出力
result_board.each do |row|
  puts row.join
end
