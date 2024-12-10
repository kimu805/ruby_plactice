def judge_height(list)
  ride_count = 0

  list.each do |friend|
    if friend[:height] >= 130
      puts "#{friend[:name]}くんは乗車できます。"
      ride_count += 1
    else
      puts "#{friend[:name]}くんは乗車できません。"
    end
  end

  puts "乗車できるのは#{ride_count}人です。"
end

def add_friend(list)
  friend = {}

  puts "あなたの名前を入力してください。"
  friend[:name] = gets.chomp
  puts "あなたの身長を入力してください。"
  friend[:height] = gets.to_i
  
  list << friend
end

friends = []

3.times do
  friends = add_friend(friends)
end

judge_height(friends)