n, k, m = gets.split.map(&:to_i)
people = Array.new(n) { ("A".."Z").to_a.sample }
words = k.times.map { gets.chomp }
logs = m.times.map { gets.chomp }

total_people = n
past_log = []
logs.each_with_index do |log, index|
  last_log = logs[index - 1]
  if !( (log.include?(words) || log[-1] != "z" || !log.include?(past_log)) || (last_log && last_log[-1] == log[0]) )
    people[index % total_people] = nil
    total_people -= 1
  end
end

puts total_people
puts people.find { |human| human != nil }