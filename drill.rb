LINE = "------------------------------"
SUBJECTS = %W[国語 数学 英語]

def registration_student(students)
  puts LINE
  student = {
    name: prompt("名前を入力してください"),
    age: prompt("年齢を入力してください", :integer)
  }

  student[:scores] = SUBJECTS.to_h { |subject| [subject, input_score(subject)] }
  students << student
  puts "#{ student[:name] }の登録が完了しました。"
  puts LINE
end

def input_score(subject)
  loop do
    score = prompt("#{subject}の得点は？", :integer)
    if score.between?(0, 100)
      return score
    end
    puts "0 ~ 100の範囲で入力してください。"
  end
end

def show_students(students)
  puts "確認したい生徒の番号を入力してください"
  students.each_with_index do |student, index|
    puts "#{index + 1} : #{ student[:name] }"
  end
  puts LINE
  
  input = prompt("数字を入力してください", :integer)
  show_student(students[input - 1])
end

def show_student(student)
  puts LINE
  puts "名前：#{ student[:name] }"
  puts "年齢：#{ student[:age] }"
  student[:scores].each do |subject, score|
    puts "#{ subject }：#{ score }"
  end
  puts LINE
end

def prompt(message, type = :string)
  print "#{message}："
  input = gets.chomp
  return input.to_i if type == :integer
  input
end

def main_menu
  puts LINE
  puts "行いたい項目を選択してください。"
  puts "[1]点数を登録する"
  puts "[2]点数を確認する"
  puts "[3]終了する"
  puts LINE
end

students = []

while true do
  main_menu

  input = prompt("数字を入力してください", :integer)
  case input
  when 1
    registration_student(students)
  when 2
    show_students(students)
  when 3
    exit
  else
    puts "無効な値です。"
  end
end