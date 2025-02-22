def pop(arr)
  arr[0] = nil
  arr.compact!
end

def show(arr)
  arr.each { |num| puts num }
end

n, k = gets.split.map(&:to_i)

arr = []
n.times do
  arr << gets.to_i
end

k.times do
  prompt = gets.chomp
  case prompt
  when "pop"
    pop(arr)
  when "show"
    show(arr)
  end
end