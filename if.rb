input = gets.to_i

if input <= 0
  puts "0以下の数字です。"
elsif input >= 10
  puts "10以上の数字です。"
else
  puts "0より大きく10より小さい数字です。"
end
