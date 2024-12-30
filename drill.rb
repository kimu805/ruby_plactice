def array123(array)
  if [1,2,3].all? { |number| array.include?(number) }
    puts "True"
  else
    puts "False"
  end
end

array123([1, 1, 2, 3, 1])
array123([1, 2, 4, ])
array123([1, 1, 2, 1, 4, 3])
