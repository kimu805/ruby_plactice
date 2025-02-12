class Employee
  attr_accessor :number, :name

  def initialize(number, name)
    @number = number
    @name = name
  end
end

input_count = gets.to_i

array = []
input_count.times do
  a, b, c = gets.split
  b_int = b.to_i

  if a == "make"
    array << Employee.new(b_int, c)
  elsif a == "getnum"
    target = array[b_int - 1]
    puts target.number
  else
    target = array[b_int - 1]
    puts target.name
  end
end