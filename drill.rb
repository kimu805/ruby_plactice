n, k = gets.split.map(&:to_i)

companies = []
n.times do
  name, password, balance = gets.split
  password = password.to_i
  balance = balance.to_i

  company = { name: name, password: password, balance: balance }
  companies << company
end

k.times do
  name, password, amount = gets.split
  password = password.to_i
  amount = amount.to_i

  target = companies.find { |company| company[:name] == name }
  if target[:password] == password
    target[:balance] -= amount
  end
end

puts "-----------------------------------"

companies.each do |company|
  puts "#{company[:name]} #{company[:balance]}"
end