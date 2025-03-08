n = gets.to_i
a, b = gets.split.map(&:to_i)

array = Array.new(n, false)

n.times do |i|
  target = i + 1
  (0..target/a).each do |x|
    (0..target/b).each do |y|
      array[i] = true if a * x + b * y == target
    end
  end
end

array[-1] = true

puts array.count(false)