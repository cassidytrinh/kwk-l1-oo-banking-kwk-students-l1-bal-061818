class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def balance
    @balance
  end

  def status
    @status
  end

  def deposit(money)
    @balance += money
  end

  def display_balance
    return "Your Balance is $#{@balance}."
  end

  def valid?
    if @status == "open" && @balance > 0
      return true
    end
    return false
  end

  def close_account
    @status = "closed"
  end

end
