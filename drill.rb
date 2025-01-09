count = gets.to_i

users = []

count.times do
  name = gets.chomp
  old = gets.to_i
  birth = gets.chomp
  state = gets.chomp

  user = { name: name, old: old, birth: birth, state: state }
  users << user
end

users.each do |user|
  puts "User{
  nickname : #{user[:name]}
  old : #{user[:old]}
  birth : #{user[:birth]}
  state : #{user[:state]}
  }"
end