# 文字列"caffelatte"の中で使われているアルファベットと、その回数を数えてください。
#  ヒント：ハッシュを作って、アルファベットの各文字をキー、回数を値にセットしていきます。 
#  "caffelatte"を１文字ずつの配列に分解するにはcharsメソッドを使います。

def count_str(str)
  length = str.length

  hash = {}
  length.times do |i|
    target = str[i]

    if hash[target]
      hash[target] += 1
    else
      hash[target] = 1
    end
    p hash
  end

  p hash
end

input = "caffelatte"
count_str(input)