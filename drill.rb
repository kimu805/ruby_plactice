h, w = gets.split.map(&:to_i)
board = h.times.map { gets.chomp }

move = [[-1, 0], [0, 1], [1, 0], [0, -1]]

