def post_item(a_cart)
  # 商品名・値段・個数の入力を促し、入力された値をハッシュオブジェクトで管理する
    puts "商品名を入力してください："
    name = gets.chomp

    puts "値段を入力してください："
    price = gets.to_i

    puts "個数を入力してください："
    quantity = gets.to_i
  
    line = "---------------------------"
    puts line
  
  # 入力された値（ハッシュオブジェクトで管理している値）と合計金額を表示する
    puts "商品名 : #{name}"
    puts "値段 : #{price}"
    puts "個数 : #{quantity}"
    puts "合計金額 : #{ price * quantity }"
    puts " "
    
    # ハッシュを配列オブジェクトに追加する
    item = { name: name, price: price, quantity: quantity }
    a_cart << item
    # a_cartをメソッドの呼び出し元に返す
    return a_cart
end
  
def check_items(a_cart)
# 保存された全ての商品情報（商品名・値段・個数）を、商品ごとに表示する
  a_cart.each_with_index do |item, index|
    puts "商品#{ index + 1 }： #{ item[:name] }"
    puts "値段：#{ item[:price] }"
    puts "個数：#{ item[:quantity] }"
    puts " "
  end

# 全ての商品の合計金額を表示する
  total_price = a_cart.map { |item| item[:price] * item[:quantity] }
  puts "合計金額 : #{ total_price }"

end

def end_program
  # プログラムを終了させる
  exit
end

def exception
  puts "入力された値は無効な値です"
end

cart = []             # 配列オブジェクトcartの生成

while true do
# メニューの表示
  puts "商品数: #{cart.length}"
  puts "[0]商品をカートに入れる"
  unless cart.empty?       #カートに商品がない場合、[1]は選択不可
    puts "[1]カートを確認する"
  end
  puts "[2]アプリを終了する"
  input = gets.to_i

  if input == 0 then
    cart = post_item(cart)  # post_itemメソッドを呼び出す記述
  elsif input == 1 then
    check_items(cart) # check_itemsメソッドを呼び出す記述
  elsif input == 2 then
    end_program     # end_programメソッドを呼び出す記述
  else
    exception           # exceptionメソッドを呼び出す記述
  end
end