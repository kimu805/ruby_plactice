def count_char(str)
  hash = {}
  str.length.times do |idx|
    if hash[str[idx]]
      hash[str[idx]] += 1
    else
      hash[str[idx]] = 1
    end
  end
  hash
end

str = "caffelatte"
puts count_char(str)