n = gets.to_i

superchats = []
members = []
n.times do
  name, event, money = gets.split
  case event
  when "give"
    money = money.to_i
    if superchat = superchats.find { |superchat| superchat[:name] == name }
      superchat[:money] += money
    else
      superchat = {name: name, money: money}
      superchats << superchat
    end
  when "join"
    members << name
  end
end

puts "-----------------------------"

sorted_superchats = superchats.sort { |a,b| b[:money] <=> a[:money] }
sorted_superchats.each do |superchat|
  puts superchat[:name]
end

members.sort.each do |member|
  puts member
end