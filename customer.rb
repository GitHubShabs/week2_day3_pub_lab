class Customer

  attr_reader :customer_name, :wallet, :age, :drunkeness

  def initialize(customer_name, wallet, age, drunkeness)
    @customer_name = customer_name
    @wallet = wallet
    @age = age
    @drunkeness = drunkeness
  end

  def buys_drink(drink)
    @wallet -= drink.drink_price
    @drunkeness += drink.alcohol_level
  end



end
