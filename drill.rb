N = 100
cards = Array.new(N, false)

(2..N).each do |i|
  index = i - 1
  while index <= 100
    if cards[index] == true
      cards[index] = false
    else
      cards[index] = true
    end
    index += i
  end
end

false_card = []
cards.each_with_index do |card, index|
  if card == false
    false_card << index + 1
  end
end

p false_card