def sequential_search(array,target)
  array.each_with_index do |number, index|
    if number == target
      return "#{target}は#{index}番目にあります"
    end
  end
  return "#{target}は見つかりませんでした"
end

numbers = [10,20,30,40,50]
puts sequential_search(numbers, 30)  # "30は2番目に見つかりました"
puts sequential_search(numbers, 25)  # "25は見つかりませんでした"