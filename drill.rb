h = gets.to_i
board = h.times.map { gets.chomp.split("") }

count = board.flatten.each_with_object(Hash.new(0)) { |item, hash| hash[item] += 1 }
most_common_element = count.max_by { |key, value| value }[0]
puts most_common_element