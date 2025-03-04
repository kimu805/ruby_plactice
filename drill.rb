n, k, m = gets.split.map(&:to_i)
words = Set.new(k.times.map { gets.chomp })
logs = m.times.map { gets.chomp }

alive = Array.new(n, true)
bef, player = "", 0
logs.each do |log|
  player = (player + 1) % n while !alive[player]

  violate_rule_1_3 = !words.include?(log)
  violate_rule_2 = bef != "" && bef[-1] != log[0]
  violate_rule_4 = log[-1] == "z"

  if violate_rule_1_3 || violate_rule_2 || violate_rule_4
    alive[player] = false
    bef = ""
  else
    words.delete(log)
    bef = log
  end

  player = (player + 1) % n
end

alive_count = 0
alive.each { |one|  alive_count += 1 if one }

puts alive_count
n.times { |i| puts i + 1 if alive[i] }