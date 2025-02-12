class Employee
  attr_accessor :number, :name

  def initialize(number, name)
    @number = number
    @name = name
  end

  def change_num(after_num)
    self.number = after_num
  end

  def change_name(after_name)
    self.name = after_name
  end
end

input_count = gets.to_i

array = []
input_count.times do
  a, b, c = gets.split
  b_int = b.to_i


  case a
  when "make"
    array << Employee.new(b_int, c)
  when "getnum"
    puts array[b_int - 1].number
  when "getname"
    puts array[b_int - 1].name
  when "change_num"
    array[b_int - 1].change_num(c)
  when "change_name"
    array[b_int - 1].change_name(c)
  end

end