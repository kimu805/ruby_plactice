N = 100
cards = Array.new(N, false)

(2..N).each do |i|
  j = i - 1
  while j <= cards.size
    cards[j] = !cards[j]
    j += i
  end
end

N.times do |i|
  p i + 1 if !cards[i]
end