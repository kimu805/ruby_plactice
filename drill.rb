H, W, N = gets.split.map(&:to_i)

arr = H.times.map { gets.split.map(&:to_i) }
ranges = N.times.map { gets.split.map { |x| x.to_i - 1 } }

puts "-------"

ranges.each do |x, y|
  target = []
  (0..x).each do |i|
    (0..y).each do |j|
      target << arr[i][j]
    end
  end
  p target.sum
end