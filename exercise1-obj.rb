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

end

acc1 = BankAccount.new
acc1.balance = 10200
acc1.interest_rate = 0.07
