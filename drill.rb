n, k, m = gets.split.map(&:to_i)
people = Array.new(n) { ("A".."Z").to_a.sample }
words = k.times.map { gets.chomp }
logs = m.times.map { gets.chomp }

total_people = n
past_log = []
eliminated = Array.new(n, false)

logs.each_with_index do |log, index|
  last_log = logs[index - 1] if index > 0
  player_index = index % total_people
  if !words.include?(log) || past_log.include?(log) || log[-1] == "z" || (last_log && last_log[-1] != log[0])
    eliminated[player_index] = true
  else
    past_log << log
  end
end

remaining_players = people.each_with_index.reject { |_, index| eliminated[index] }.map(&:first)

puts remaining_players.size
puts remaining_players.first