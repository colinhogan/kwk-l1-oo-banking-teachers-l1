class BankAccount
  
  attr_accessor :balance, :status, :balance, :display_balance
  attr_reader :name 
  
  def initialize(name, balance=1000, status="open")
    @name = name
    @balance = balance
    @status = status
  end 
  
  def deposit(amount=gets.strip.to_f)
    @balance = @balance + amount   
  end 
  
  def display_balance
     return "Your Balance is $#{@balance}."
  end 

  def valid?
    (@balance > 0) && (@status == "open")
  end 

  def close_account
    @status = "closed"
  end 
end






# colin_bank = BankAccount.new("Colin Hogan")


# puts colin_bank.name
# puts colin_bank.balance