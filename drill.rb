begin
  1/0
rescue ZeroDivisionError => e
  p e.message
end