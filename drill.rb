def in1to10(num, outside_mode)
  if outside_mode || (num >= 1 && num <= 10)
    puts "True"
  else
    puts "False"
  end
end

in1to10(5,false)
in1to10(11,false)
in1to10(11,true)