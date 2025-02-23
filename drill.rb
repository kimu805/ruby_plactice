H, W, N = gets.split.map(&:to_i)

arr = H.times.map { gets.split.map(&:to_i) }
ranges = N.times.map { gets.split.map { |x| x.to_i - 1} }

puts "--------------------------------------"

ranges.each do |a, b, c, d|
  target = []
  (a..c).each do |i|
    (b..d).each do |j|
      target << arr[i][j]
    end
  end
  p target.sum
end