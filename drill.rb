def bubble_sort(array)
  size = array.size - 1
  size.times do
    (0...size).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
  end
  array
end

array = [100,80,10,30,70,20,40,50,60,90]
p bubble_sort(array)