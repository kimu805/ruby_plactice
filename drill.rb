def registration_student(students)
  
end

def show_students(students)
  
end

students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'
  input = gets.to_i
  if input == 1
    registration_student
  elsif input == 2
    show_student_name
  elsif input == 3
    # アプリケーションを終了させなさい
  else
    puts '無効な値です'
  end
end