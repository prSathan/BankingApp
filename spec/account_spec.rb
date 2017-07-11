require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'can create an account that initializes with a balance of zero' do
    expect(account.balance).to equal(0)
  end
end
