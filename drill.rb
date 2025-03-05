def count_char(str)
  hash = {}
  str.size.times do |i|
    target = str[i]
    if hash[target]
      hash[target] += 1
    else
      hash [target] = 1
    end
  end

  p hash
end

str = "caffelatte"
count_char(str)