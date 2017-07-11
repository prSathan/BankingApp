require_relative 'transaction'

class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
  end

  def deposit(amount)
    debit_transaction(amount)
    Transaction.new(Time.now.strftime("%d/%m/%y"), amount, @balance)
  end

  def withdraw(amount)
    credit_transaction(-amount)
    Transaction.new(Time.now.strftime("%d/%m/%y"), -amount, @balance)
  end

  private

  def debit_transaction(amount)
    @balance += amount
  end

  def credit_transaction(amount)
    @balance += amount
  end

end
