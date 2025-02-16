class Customer
  attr_accessor :age, :price

  def initialize(age)
    @age = age
    @price = 0
  end

  def food_order(price)
    
  end

  def soft_drink_order(price)
    
  end
end

class CustomerOver20 < Customer
  
  def alcohol_order(price)
    if age < 20
      0
    end

  end
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

count_of_order.times do
  no_customer, order_type, price = gets.split
  no_customer = no_customer.to_i
  price = price.to_i


  customers[no_customer - 1].pay(price)
end