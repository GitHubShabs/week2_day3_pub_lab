require("minitest/autorun")
require("minitest/rg")

require_relative("../drink")

class DrinkTest < MiniTest::Test

  def setup

    @drink1 = Drink.new("Red Aftershock", 1.00, 1)

  end


def test_drink_has_name
    assert_equal("Red Aftershock", @drink1.drink_name)
end

def test_drink_has_price
    assert_equal(1.00, @drink1.drink_price )
end

def test_drink_has_alcohol_level
  assert_equal(1, @drink1.alcohol_level)
end

















end
