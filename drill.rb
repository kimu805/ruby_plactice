h, w = gets.split.map(&:to_i)

fields = []
h.times do 
  fields << gets.chomp
end

bom_rows = Array.new(h, false)
bom_columns = Array.new(w, false)

h.times do |i|
  w.times do |j|
    if fields[i][j] == "#"
      bom_rows[i] = true
      bom_columns[j] = true
    end
  end
end

count = 0

h.times do |i|
  if bom_rows[i]
    count += w
  end
end

w.times do |i|
  if bom_columns[i]
    count += h
  end
end

h.times do |i|
  w.times do |j|
    if bom_rows[i] && bom_columns[j]
      count -= 1
    end
  end
end

puts count