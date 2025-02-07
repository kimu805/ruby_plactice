module Bar
  def methodA
    @a
  end
end

class Foo
  def initialize(a, b)
    @a = a
    @b = b
  end
end

class FooExt < Foo
  include Bar
end

fooExt = FooExt.new(3,4)
p fooExt.methodA

p Bar.ancestors
p Bar.instance_methods
p Bar.new