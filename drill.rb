# 数列Aの入力（10,000個）
a = $stdin.read.split.map(&:to_i)

# 100要素ごとの最大値を格納する配列
block_max = []

# 100個ずつ分割し、最大値を求める
(0...100).each do |i|
  block = a[i * 100, 100]  # 100個の要素を取得
  block_max << block.max   # その中の最大値を取得
end

# 各ブロックの最大値を出力
puts block_max
