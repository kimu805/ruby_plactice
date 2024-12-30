def parrot_trouble(talking, hour)
  if ((21..24).include?(hour) || (0..6).include?(hour)) && talking
    puts "NG"
  else
    puts "OK"
  end
end

parrot_trouble(true, 6)
parrot_trouble(true, 7)
parrot_trouble(false, 6)
parrot_trouble(false, 7)