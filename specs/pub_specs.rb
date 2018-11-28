require("minitest/autorun")
require("minitest/rg")

require_relative("../pub")
require_relative("../customer")
require_relative("../drink")



class PubTest < MiniTest::Test


  def setup
    @pub1 = Pub.new("CodeBar", 1000.00, [])
    @pub2 = Pub.new("CodeBar", 0.00, [])

    @drink1 = Drink.new("Tequila", 2.00)
  end

  def test_pub_name
    assert_equal("CodeBar", @pub1.pub_name)
  end

  def test_pub_has_till__amount
    assert_equal(1000.00, @pub1.till)
  end

  def test_pub_has_till__empty
    assert_equal(0.00, @pub2.till)
  end

  def test_pub_has_drinks
    assert_equal([], @pub1.drinks_cabinet)
  end

  def test_pub_sells_drink
    #Arrange
    pub = @pub1
    drink = @drink1
    #Act
    #pub sells drink
    pub.sells_drink(drink)
    #Assert
    assert_equal(1002.00, pub.till)

  end















end
