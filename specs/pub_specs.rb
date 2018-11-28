require("minitest/autorun")
require("minitest/rg")

require_relative("../pub")
require_relative("../customer")
require_relative("../drink")



class PubTest < MiniTest::Test

def test_pub_name
  pub = Pub.new("CodeBar", 100.00, [])
  assert_equal("CodeBar", pub.pub_name)
end

def test_pub_has_till__amount
pub = Pub.new("CodeBar", 100.00, [])
assert_equal(100.00, pub.till)
end

def test_pub_has_till__empty
pub = Pub.new("CodeBar", 0.00, [])
assert_equal(0.00, pub.till)
end

def test_pub_has_drinks
pub = Pub.new("CodeBar", 100.00, [])
assert_equal([], pub.drinks_cabinet)
end


















end
