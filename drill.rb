arr = (1..30).to_a
container = []

arr.each_cons(7) do |i|
  p i
  container << i
end

p container.length