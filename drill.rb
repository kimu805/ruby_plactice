def bar
  catch(:calc) do 
    throw :calc, 100
  end
end

p bar