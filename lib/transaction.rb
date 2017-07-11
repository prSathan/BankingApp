require_relative 'statement'

class Transaction

  attr_reader :print, :transactions

  def initialize(date, amount, balance)
    @transactions = []
    @transactions << [date, amount, balance]
  end

  def statement
    Statement.new(@transactions)
  end

end
