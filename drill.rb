def fizz_buzz
  (1..100).each do |number|
    if number % 15 == 0
      p "#{number} : FizzBuzz"
    elsif number % 5 == 0
      p "#{number} : Buzz"
    elsif number % 3 == 0
      p "#{number} : Fizz"
    else
      p "#{number}"
    end
  end
end

fizz_buzz