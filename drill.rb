class Customer
  attr_accessor :total

  def initialize
    @total = 0
  end

  def order(item, price)
    price = 500 if item == "0"
    @total += price
  end
end

class AdultCustomer < Customer
  def initialize
    super
    @alcohol_ordered = false
  end

  def order(item, price)
    if item == "0" || item == "alcohol"
      @alcohol_ordered = true
    elsif item == "food" && @alcohol_ordered
      price -= 200
    end
    super(item, price)
  end
end

class MinorCustomer < Customer
  def order(item, price)
    super(item, price) unless item == "0" || item == "alcohol"
  end
end

number_of_people, order_count = gets.split.map(&:to_i)
customers = []

number_of_people.times do
  age = gets.to_i
  customers << (age < 20 ? MinorCustomer.new : AdultCustomer.new)
end

back_customers = []

order_count.times do
  id, item, price = gets.split
  id = id.to_i - 1
  price = price.to_i
  customers[id].order(item, price) if customers[id]
  
  if item == "A"
    removed_customer = customers.delete_at(id)
    back_customers << removed_customer 
  end
end

back_customers.each do |customer|
  p customer
  # p customer.total
end

p back_customers.size