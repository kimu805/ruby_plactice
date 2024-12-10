class Student
  
  def initialize(last_name,first_name)
    @last_name = last_name
    @first_name = first_name
  end

  def introduce
    puts "私の名前は「#{@last_name + " " + @first_name}」です。"
  end
end

student = Student.new("山田", "太郎")
student.introduce