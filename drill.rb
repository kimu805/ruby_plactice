H, W = gets.split.map(&:to_i)

board = H.times.map { gets.chomp }

H.times do |i|
  W.times do |j|
    if (i == 0 && board[i+1][j] == "#") || (i == H-1 && board[i-1][j] == "#") || (board[i-1][j] == "#" && board[i+1][j] == "#")
      puts "#{i} #{j}"
    end
  end
end