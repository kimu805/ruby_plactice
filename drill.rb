def changeName(index, after_name, users)
  index_int = index.to_i
  target_user = users[index_int - 1]
  target_user[:nickname] = after_name
end

input_count, change_name_count = gets.split.map(&:to_i)

users = Array.new

input_count.times do 
  user = Hash.new
  user[:nickname], user[:old], user[:birth], user[:state] = gets.split
  users << user
end

change_name_count.times do
  index, after_name = gets.split
  changeName(index, after_name, users)
end

users.each do |user|
  puts "#{user[:nickname]} #{user[:old]} #{user[:birth]} #{user[:state]}"
end