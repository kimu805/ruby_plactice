class Car
  def initialize(car_name,car_model,capacity)
    @name = car_name
    @model = car_model
    @capacity = capacity
  end

  def self.run
    puts "走行します。"
  end

  def ride_car(ride_number)
    @ride_number = ride_number
    if ride_number > @capacity
      puts "#{@name}は、乗客定員が#{@capacity}人なので、#{ride_number}人は乗れません。"
    else
      puts "#{ride_number}人乗車できました。"
    end
  end

  def size_car
    if @model == "大型"
      puts "この道は#{@model}車は通れません。"
    else
      puts "通れます。"
    end
  end
end

fire_truck = Car.new("消防車","大型",5)
fire_truck.ride_car(10)
fire_truck.size_car