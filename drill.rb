N, K = gets.split.map(&:to_i)

i_count = N.times.flat_map { gets.split.map(&:to_i) }
page_numbers = K.times.map { gets.split.map { |x| x.to_i - 1} }

page_numbers.each do |a, b, c, d|
  a_icount = []
  (a..b).each do |i|
    a_icount << i_count[i]
  end
  b_icount = []
  (c..d).each do |j|
    b_icount << i_count[j]
  end

  if a_icount.sum > b_icount.sum
    puts "A"
  elsif a_icount.sum < b_icount.sum
    puts "B"
  else
    puts "DRAW"
  end
end