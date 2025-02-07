def foo
  -1 / 0
rescue
  p 1
end

foo