target_nums = []
(1..10000).each do |n|
  first = n
  begin
    if n % 2 == 0
      n = n / 2
    else
      n = n * 3 + 1
    end
  end while n == first || n == 1
  target_nums << first if n == first
end

p target_nums.size