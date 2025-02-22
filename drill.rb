n, k = gets.split.map(&:to_i)

members = []
n.times.map { members << gets.chomp }

k.times do
  event, name = gets.split

  case event
  when "handshake"
    members.sort.each { |member| p member }
  when "join"
    members << name
  when "leave"
    members.delete(name)
  end
end