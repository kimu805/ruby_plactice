class Food
  
end

while true do
  puts "[0]:カロリーを入力する"
  puts "[1]:カロリーの合計を見る"

  input = gets.to_i
  case input
  when 0
    Food.input
  when 1
    Food.show_all_calory
    exit
  end
end