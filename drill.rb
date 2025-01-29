def cutbar(number_of_people, length, current_number)
  if current_number > length
    0
  elsif current_number > number_of_people
    1 + cutbar(number_of_people, length, current_number + number_of_people)
  else
    1 + cutbar(number_of_people, length, current_number * 2)
  end
end

def cutbar2(number_of_people, length)
  count = 0
  current_number = 1
  while current_number < length
    current_number += current_number < number_of_people ? current_number : number_of_people
    count += 1
  end
  count
end

puts cutbar(3, 20, 1)
puts cutbar(5, 100, 1)

puts cutbar2(3,20)
puts cutbar2(5, 100)