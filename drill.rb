x, y, z = gets.split.map(&:to_i)  # x, y, z を取得

board = []  # 3次元配列を作成

z.times do  # 層の数（z回繰り返す）
  layer = []  # 層ごとのデータを格納する配列
  x.times do  # 各層の行数（y回繰り返す）
    layer << gets.chomp.chars  # 1行ずつ取得し、文字配列に変換
  end
  gets  # "--" を読み飛ばす
  board << layer  # 層をboardに追加
end

p board