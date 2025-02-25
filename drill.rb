x, y, n = gets.split.map(&:to_i)

total = 0
(1..n).each do |cnt|
  total += cnt
  if cnt % 4 == 1 || cnt % 4 == 2
    x += cnt / 2 if cnt.odd?
    y += cnt / 2 if cnt.even?
  else
    x -= cnt / 2 if cnt.odd?
    y -= cnt / 2 if cnt.even?
  end

  if total > n
    diff = total - n
    if cnt % 4 == 1 || cnt % 4 == 2
      x += diff if cnt.odd?
      y += diff if cnt.even?
    else
      x -= diff if cnt.odd?
      y -= diff if cnt.even?
    end
  end
end

puts y.to_s + " " + x.to_s
