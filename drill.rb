file = File.open("list.txt", "r")
begin
  while true
    puts file.readline  # 1行ずつ出力
  end
rescue EOFError
  puts "End of file reached."
ensure
  file.close
end
