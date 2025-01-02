class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Student < Person
  
  def introduce
    puts "私の名前は#{ name }です。#{ age }歳です"
  end
end

student = Student.new("佐藤健", 30)
student.introduce