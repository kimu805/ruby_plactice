battle_count = gets.to_i

win_count = 0

battle_count.times do
  battle = gets.split.map(&:upcase)
  if (battle[0] == "G" && battle[1] == "C") || (battle[0] == "C" && battle[1] == "P") || (battle[0] == "P" && battle[1] == "G")
    win_count += 1
  end
end

p win_count