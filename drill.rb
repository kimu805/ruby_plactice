n, k = gets.split.map(&:to_i)

arr1 = []
n.times do
  arr1 << gets.to_i
end

arr2 = []
k.times do
  arr2 << gets.to_i
end

arr2.each do |num|
  if arr1.include?(num)
    puts "Yes"
  else
    puts "No"
  end
end
