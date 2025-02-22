def join(num, heights)
  heights << num
end

def sorting(heights, p)
  sorted_heights = heights.sort
  puts sorted_heights.index { |h| h >= p } + 1
end

n, k, p = gets.split.map(&:to_i)

heights = n.times.map { gets.to_i }

k.times do
  split, num = gets.split
  num = num.to_i

  case split
  when "join"
    join(num, heights)
  when "sorting"
    sorting(heights, p)
  end
end