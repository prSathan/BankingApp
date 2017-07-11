require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'can create an account that initializes with a balance of zero' do
    expect(account.balance).to equal(0)
  end

  it 'can deposit money into an account' do
    account.deposit(1000)
    expect(account.balance).to equal(1000)
  end

  it 'can withdraw money from an account' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.balance).to equal(500)
  end
end
