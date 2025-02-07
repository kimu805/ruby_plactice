def hoge
  x = 0
  1.step(5,1) do |i|
    x += i
  end
  puts x
end
hoge