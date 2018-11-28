class Customer

  attr_reader :customer_name, :wallet, :age

  def initialize(customer_name, wallet, age)
    @customer_name = customer_name
    @wallet = wallet
    @age = age
  end

  def buys_drink(drink)
    return @wallet -= drink.drink_price
  end



end
