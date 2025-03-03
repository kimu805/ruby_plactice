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
end