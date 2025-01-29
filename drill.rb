N = 100
cards = Array.new(N, false)

(2..N).each do |i|
  j = i - 1
  while j <= cards.size
    cards[j] = !cards[j]
    j += i
  end
end

false_card = []
cards.each_with_index do |card, index|
  if card == false
    false_card << index + 1
  end
end

p false_card