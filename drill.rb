num = 1000
nums = []

while num < 10000
  str = num.to_s
  if str[0..1].to_i * str[2..3].to_i == str.reverse.to_i
    nums << num
    puts num
  end
  num += 1
end

puts nums