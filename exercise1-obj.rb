class BankAccount
  def balance
    @balance
  end

  def balance=(num)
    @balance = num
  end

  def interest_rate
    @interest_rate
  end

  def interest_rate=(rate)
    @interest_rate = rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance *= 1.00 + interest_rate
  end
end

acc1 = BankAccount.new
acc1.balance = 10200
puts "The amount before deposit is #{acc1.balance}"
acc1.interest_rate = 0.015
acc1.deposit(500)
puts "The amount after deposit is #{acc1.balance}"
acc1.withdraw(1000)
puts "The balance after withdrawal is #{acc1.balance}"
acc1.gain_interest
puts "The balance after gaining interest is #{acc1.balance}"
