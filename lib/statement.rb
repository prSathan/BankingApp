class Statement

  def initialize(transactions)
    @statement = []
    @statement << transactions
  end

  def header
    "date || credit || debit || balance"
  end

  def print
    return header
    @statement
  end

end
