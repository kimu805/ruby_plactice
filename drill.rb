class Customer
  attr_reader :total

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
    @has_ordered_alcohol = false
  end

  def order(item, price)
    if item == "0" || item == "alcohol"
      @has_ordered_alcohol = true
    elsif item == "food" && @has_ordered_alcohol
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
  customers << (age >= 20 ? AdultCustomer.new : MinorCustomer.new)
end

order_count.times do
  id, item, price = gets.split
  id = id.to_i - 1
  price = price.to_i
  customers[id].order(item, price)
end

customers.each { |customer| p customer.total }