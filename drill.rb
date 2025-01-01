# def lone_sum(array)
#   unique_elements = array.select { |number| array.count(number) == 1 }

#   p unique_elements.sum
# end


def lone_sum(array)
  unique_array = []

  array.each do |num|
    count = 0

    array.each do |i|
      if num == i
        count += 1
      end
    end

    if count < 2
      unique_array << num
    end
  end

  sum = 0
  unique_array.each do |num|
    sum += num
  end
  p sum
end

lone_sum([1, 2, 3]) 
lone_sum([3, 2, 3]) 
lone_sum([3, 3, 3]) 