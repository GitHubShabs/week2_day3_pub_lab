require("minitest/autorun")
require("minitest/rg")

require_relative("../drink")

class DrinkTest < MiniTest::Test


def test_drink_has_name
  drink = Drink.new("Red Aftershock", 1.00)
  assert_equal("Red Aftershock", drink.drink_name)
end

def test_drink_has_price
  drink = Drink.new("Red Aftershock", 1.00)
  assert_equal(1.00, drink.drink_price )
end

















end
