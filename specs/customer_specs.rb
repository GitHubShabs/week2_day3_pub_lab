require("minitest/autorun")
require("minitest/rg")

require_relative("../customer")
require_relative("../drink")

class CustomerTest < MiniTest::Test

def setup

  @customer1 = Customer.new("Begbie", 0.00)
  @customer2 = Customer.new("Mark Renton", 100.00)

  @drink1 = Drink.new("Tequila", 2.00)

end

def test_customer_has_name
  #customer = Customer.new("Begbie", 0.00)
  assert_equal("Begbie", @customer1.customer_name)
end

def test_customer_has_wallet__empty
  #customer = Customer.new("Begbie", 0.00)
  assert_equal(0.00, @customer1.wallet)
end

def test_customer_has_wallet__has_money
  #customer = Customer.new("Begbie", 1000.00)
  assert_equal(100.00, @customer2.wallet)
end

def test_customer_buys_drink
  # Arrange
  customer = @customer2
  drink = @drink1
  # Act
  # drink.drink_price
  # customer.wallet
  customer.buys_drink(drink)
  # Assert
  assert_equal(98.00, customer.wallet)
end

















end
