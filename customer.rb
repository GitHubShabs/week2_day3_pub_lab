class Customer

  attr_reader :customer_name, :wallet

  def initialize(customer_name, wallet)
    @customer_name = customer_name
    @wallet = wallet
  end

  def buys_drink(drink)
    return @wallet -= drink.drink_price
  end



end
