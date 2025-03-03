n, k, m = gets.split.map(&:to_i)
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
    total_people -= 1
  else
    past_log << log
  end
end

p eliminated.count(false)
indexes = eliminated.each_index.select { |i| eliminated[i] == false }
indexes.each do |index|
  p index + 1
end