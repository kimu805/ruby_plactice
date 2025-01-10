# 文字列"caffelatte"の中で使われているアルファベットと、その回数を数えてください。
#  ヒント：ハッシュを作って、アルファベットの各文字をキー、回数を値にセットしていきます。 
#  "caffelatte"を１文字ずつの配列に分解するにはcharsメソッドを使います。

def count_str1(str)
  count_hash = {}
  str.length.times do |i|
    target = str[i]
    count_hash[target] ? count_hash[target] += 1 : count_hash[target] = 1
  end
  p count_hash
end

def count_str2(str)
  count_hash = {}
  str.chars.each do |char|
    count_hash[char] = count_hash.fetch(char, 0) + 1
  end
  p count_hash
end

input = "caffelatte"
count_str1(input)
count_str2(input)