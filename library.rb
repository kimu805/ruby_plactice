n = gets.to_i
s = gets.chomp

if n % 2 == 1
  one_count = ( n + 1 ) / 2 - 1
  one_count.times do |i|
    if s[i] != "1"
      puts "No"
      exit
    end
  end

  slash_position = ( n + 1 ) / 2 - 1
  if s[slash_position] != "/"
    puts "No"
    exit
  end

  two_count = n - (( n + 1 ) / 2 + 1)
  two_count.times do |i|
    if s[slash_position + i + 1] != "2"
      puts "No"
      exit
    end
  end

  puts "Yes"

else
  p "No"
end