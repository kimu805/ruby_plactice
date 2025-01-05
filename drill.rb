require "date"

def get_days(year, month)
  if month < 1 || month > 12
    return "無効な値です"
  end

  days_in_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  days_in_months[1] = 29 if Date.leap?(year)

  return days_in_months[month - 1]
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"