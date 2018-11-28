require("minitest/autorun")
require("minitest/rg")

require_relative("../food")

class FoodTest < MiniTest::Test

  def setup

    @food1 = Food.new("Kebab", 10.00, 2)

  end

def test_food_has_name
  assert_equal("Kebab", @food1.food_name)
end

def test_food_has_price
  assert_equal(10.00, @food1.food_price)
end

def test_food_has_rejuvenation_level
  assert_equal(2, @food1.rejuvenation_level)
end












end
