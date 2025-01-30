# coins = [10, 50, 100, 500]
# count = 0

# (2..15).each do |i|
#   coins.repeated_combination(i).each do |coin_set|
#     count += 1 if coin_set.inject(:+) == 1000
#     p coin_set if coin_set.inject(:+) == 1000
#   end
# end

# p count

@count = 0

def change(target, coins, max)
  coin = coins.shift
  if coins.size == 0
    @count += 1 if target / coin <= max
  else
    (0..target/coin).each do |i|
      change(target - coin * i, coins.clone, max - i)
    end
  end
end

change(1000, [500, 100, 50, 10], 15)
p @count