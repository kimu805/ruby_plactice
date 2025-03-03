require "set"

n, k, m = gets.split.map(&:to_i)
d = Set.new(k.times.map { gets.chomp })
s = m.times.map { gets.chomp }

alive = Array.new(n, true)
bef, player = "", 0

s.each do |word|
  player = (player + 1) % n while !alive[player]

  violate_rule_1_3 = !d.include?(word)
  violate_rule_2 = bef != "" && bef[-1] != word[0]
  violate_rule_4 = word[-1] == "z"
  if violate_rule_1_3 || violate_rule_2 || violate_rule_4
    alive[player] = false
    bef = ""
  else
    d.delete(word)
    bef = word
  end

  player = (player + 1) % n
end

alive_count = 0
alive.each { |one| alive_count += 1 if one }

puts alive_count
n.times { |i| puts i + 1 if alive[i]}