target_nums = []
even_nums = (1..10000).select { |x| x.even? }

even_nums.each do |n|
  first = n
  n = n * 3 + 1
  begin
    if n.even?
      n /= 2
    else
      n = n * 3 + 1
    end
  end until n == first || n == 1
  target_nums << first if n == first
end

p target_nums.size