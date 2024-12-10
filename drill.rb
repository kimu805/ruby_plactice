def in1to10(num, outside_mode)
  if outside_mode
    puts "True"
  else
    if num >= 1 && num <= 10
      puts "True"
    else
      puts "False"
    end
  end
end

# 呼び出し例
in1to10(5,false)
in1to10(11,false) 
in1to10(11,true) 