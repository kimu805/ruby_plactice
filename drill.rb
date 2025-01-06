def janken
    hands = %W[グー チョキ パー]
    hands.each_with_index do |hand, index|
      puts "[#{ index }] : #{ hand }"
    end
    
    player_hand = gets.to_i
    program_hand = rand(0..2)

    puts "あなたの手：#{ hands[player_hand] }, 私の手：#{ hands[program_hand] }"
    
    result = (player_hand - program_hand) % 3
    case result
    when 0
      puts "あいこで..."
      return true
    when 1
      puts "あなたの負けです。"
      return false
    when 2
      puts "あなたの勝ちです。"
      return false
    end
end

next_game = true

puts "最初はグー、じゃんけん..."

while next_game do
  next_game = janken
end