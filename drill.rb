n, k = gets.split.map(&:to_i)

departs = []

n.times do
  departs << gets.chomp
end

receipts = []
k.times do
  name, number, amount = gets.split
  number = number.to_i
  amount = amount.to_i

  receipt = {name: name, number: number, amount: amount}
  receipts << receipt
end

departs.each do |depart|
  puts "----------------------"
  puts depart
  receipts.find_all { |receipt| receipt[:name] == depart }.each do |receipt|
    puts "#{receipt[:number]} #{receipt[:amount]}"
  end
end