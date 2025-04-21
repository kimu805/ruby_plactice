def my_method
  x = "goodbye"
  yield("cruel")
end

x = "Hello"
p my_method do |y| 
  "#{x}, #{y} world"
end