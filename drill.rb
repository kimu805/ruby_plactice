coins = [10, 50, 100, 500]
count = 0

(2..15).each do |i|
  coins.repeated_combination(i).each do |coin_set|
    count += 1 if coin_set.inject(:+) == 1000
  end
end

p count
