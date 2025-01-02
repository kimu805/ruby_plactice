while true do
  puts "【0】：カロリーを表示する、【1】：終了する"
  input = gets.to_i

  if input == 0
    puts "500kcal"
  elsif input == 1
    exit
  end
end