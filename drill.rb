File.open("list.txt") do |io|
  io.write(Time.now.strftime("%Y/%m/%d"))
end