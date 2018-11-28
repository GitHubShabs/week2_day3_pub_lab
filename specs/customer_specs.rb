require("minitest/autorun")
require("minitest/rg")

require_relative("../customer")
require_relative("../drink")

class CustomerTest < MiniTest::Test


def test_customer_has_name
  customer = Customer.new("Begbie", 0.00)
  assert_equal("Begbie", customer.customer_name)
end

def test_customer_has_wallet__empty
  customer = Customer.new("Begbie", 0.00)
  assert_equal(0.00, customer.wallet)
end

def test_customer_has_wallet__has_money
  customer = Customer.new("Begbie", 1000.00)
  assert_equal(1000.00, customer.wallet)
end

















end
