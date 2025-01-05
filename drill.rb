def withdraw(balance, amount)
  fee = 110
  balance -= ( amount + fee )
  if balance < 0
    puts "残高不足です"
  else
    puts "#{ amount }円引き出しました。残高は#{ balance }円です"
  end
end

balance = 100000
puts "いくら引き落としますか？（手数料110円かかります）"
money = gets.to_i
withdraw(balance, money)