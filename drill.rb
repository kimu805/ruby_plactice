class Customer
  attr_accessor :age

  def initialize(age)
    @age = age
  end
end

class CustomerOver20 < Customer
  
end

number_of_people, count_of_order = gets.split.map(&:to_i)
customers = []

number_of_people.times do
  age = gets.to_i
  if age < 20
    customer = Customer.new(age)
  else
    customer = CustomerOver20.new(age)
  end
  customers << customer
end