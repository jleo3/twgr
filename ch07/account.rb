class Account
  attr_accessor :balance
  def initialize(amount=0)
    self.balance = amount
  end
  def +(x)
    self.balance += x
  end
  def -(x)
    self.balance -= x
  end
  def to_s
    balance.to_s
  end
end
acc = Account.new(20)
acc -= 5
puts acc

