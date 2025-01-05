def withdraw(balance, amount)
  fee = 110
  total_withdraw = amount + fee 

  if balance < total_withdraw
    puts "残高不足です"
  else
    balance -= total_withdraw
    puts "#{ amount }円引き出しました。残高は#{ balance }円です"
  end
end

balance = 100_000
print "いくら引き落としますか？（手数料110円かかります）:"
money = gets.to_i
withdraw(balance, money)