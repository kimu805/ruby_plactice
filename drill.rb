class MyClass
  def my_method
    @x = 2
    binding
  end
end

b = MyClass.new.my_method
p eval "@x", b