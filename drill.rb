# ランダムな整数の配列
random_array = [34, 7, 23, 32, 5, 62, 31, 14]

# 昇順にソートされた配列（二分探索用）
sorted_array = [3, 8, 15, 22, 27, 33, 39, 44, 50, 55]

def liner_search(array, target)
  array.each_with_index do |number, index|
    return index + 1 if number == target
  end
  return -1
end

target = gets.to_i
result = liner_search(sorted_array, target)

if result == -1
  puts "見つかりませんでした。"
else
  puts "#{target}は#{result}番目にあります。"
end