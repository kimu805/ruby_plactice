def register_book(books)
  line = "--------------------------------"
  print "著者を入力してください： "
  author = gets.chomp

  print "タイトルを入力してください： "
  title = gets.chomp

  print "価格を入力してください： "
  price = gets.to_i

  book = { author: author, title: title, price: price }
  books << book
  puts "「#{ title }」の登録が完了しました"
  puts line
end

def show_books(books)
  line = "--------------------------------"
  puts line2

  total_prices = books.map { |book| book[:price] }.sum
  average_price = total_prices / books.size
  puts "平均価格： #{ average_price }円"
  
  puts "見たい番号を入力してください"
  books.each_with_index do |book, index|
    puts "#{ index + 1 } : #{ book[:title] }"
  end
  puts line

  input = gets.to_i
  show_book(books[input - 1])
end

def show_book(book)
  line = "--------------------------------"
  puts line

  puts "著者： #{ book[:author] }"
  puts "タイトル： #{ book[:title] }"
  puts "価格： #{ book[:price] }"

  puts line
end

books = []

while true do
  puts "番号を入力してください"
  puts "[1] 本を登録する"
  puts "[2] 本の一覧を見る"
  puts "[3] 終了する"

  input = gets.to_i
  case input
  when 1
    register_book(books)
  when 2
    show_books(books)
  when 3
    exit
  else
    puts "無効な値です"
  end
end