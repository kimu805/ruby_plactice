fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

fruits_price.each do |fruit_price|
  total_price = fruit_price[1].sum
  p "#{fruit_price[0]}の合計金額は#{total_price}円です"
end