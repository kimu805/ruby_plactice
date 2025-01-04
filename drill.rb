def subset_sum?(set, target)
  dp = Array.new(target + 1, false)
  dp[0] = true
  

  set.each do |num|
    target.downto(num) do |j|
      dp[j] ||= dp[j - num]
      p dp[j]
    end
  end

  return dp[target]
end

set = [3, 34, 4, 12, 5, 2]
target = 9
if subset_sum?(set, target)
  puts "はい"
else
  puts "いいえ"
end