LINE = "------------------------------------------"
SUBJECTS = %W[国語 数学 英語]

def registration_student(students)
  puts LINE
  student = {
    name: prompt("名前を入力してください"),
    age: prompt("年齢を入力してください", :integer)
  }

  student[:scores] = SUBJECTS.to_h { |subject|
    [subject, input_score(subject)]
  }

  students << student
  puts "登録が完了しました。"
  puts LINE

end

def input_score(subject)
  loop do
    print "#{subject}の得点は？："
    score = gets.to_i
    if score.between?(0, 100)
      return score
    end 
    puts "無効な値です。０～１００の範囲内で入力してください。"
  end
end

def prompt(message, type = :string)
  print "#{message}："
  input = gets.chomp
  return input.to_i if type == :integer
  input
end

def show_students(students)
  puts LINE
  puts "見たい生徒の番号を入力してください"
  students.each_with_index do |student, index|
    puts "#{index + 1} : #{student[:name]}"
  end

  input = prompt("数字を入力してください", :integer)
  show_student(students[input - 1])
end

def show_student(student)
  puts LINE
  puts "名前：#{student[:name]}"
  puts "年齢：#{student[:age]}"
  SUBJECTS.each do |subject|
    puts "#{subject}：#{student[:scores][subject]}"
  end
  puts LINE
end

students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'

  input = prompt("数字を入力してください", :integer)
  if input == 1
    registration_student(students)
  elsif input == 2
    show_students(students)
  elsif input == 3
    exit
  else
    puts '無効な値です'
  end
end