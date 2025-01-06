LINE = "----------------------------"
SUBJECTS = %W[国語 数学 英語]

def registration_student(students)
  puts LINE
  student = {
    name: prompt("生徒の名前を入力してください"),
    age: prompt("生徒の年齢を入力してください", :integer)
  }

  student[:scores] = SUBJECTS.map { |subject| input_score(subject) }
  students << student
  
  puts "「#{ student[:name] }」を登録しました。"
  puts LINE
end

def prompt(message, type = :string)
  print "#{ message }："
  input = gets.chomp
  return input.to_i if type == :integer
  input
end

def input_score(subject)
  loop do
    score = prompt("#{ subject }の得点は？", :integer)
    return score if score.between?(0, 100)

    puts "無効な値です。0 ~ 100の範囲で入力してください。"
  end
end

def show_student_name(students)
  puts LINE
  puts "見たい生徒の番号を入力してください"
  students.each_with_index do |student, index|
    puts " #{ index + 1 } : #{ student[:name] }"
  end
  puts LINE

  input = gets.to_i
  student = students[input - 1]
  show_student(student)
end

def show_student(student)
  puts LINE

  puts "名前： #{ student[:name] }"
  puts "年齢： #{ student[:age] }"
  SUBJECTS.each_with_index do |subject, index|
    puts "#{ subject }： #{ student[:scores][index]}"
  end
  puts LINE
end

students = []

while true
  puts "行いたい項目を選択してください"
  puts "[1]点数を登録する"
  puts "[2]点数を確認する"
  puts "[3]終了する"

  input = gets.to_i
  case input
  when 1
    registration_student(students)
  when 2
    show_student_name(students)
  when 3
    exit
  else
    puts "無効な値です。"
  end
end