require("minitest/autorun")
require("minitest/rg")

require_relative("../pub")
require_relative("../customer")
require_relative("../drink")



class PubTest < MiniTest::Test


  def setup
    @drink1 = Drink.new("Tequila", 2.00)
    @drink_arr1 = [@drink1]

    @pub1 = Pub.new("CodeBar", 1000.00, @drink_arr1)
    @pub2 = Pub.new("CodeBar", 0.00, [])

    @customer1 = Customer.new("Begbie", 0.00, 15)
    @customer2 = Customer.new("Mark Renton", 100.00, 21)

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
    assert_equal(1, @pub1.drinks_cabinet.length)
  end

  def test_pub_sells_drink__of_age
    #Arrange
    pub = @pub1
    drink = @drink1
    customer = @customer2
    #Act
    #pub sells drink
    pub.sells_drink(drink, customer)
    #Assert
    assert_equal(1002.00, pub.till)
    assert_equal(0, pub.drinks_cabinet.length)
  end

  def test_pub_sells_drink__under_age
    #Arrange
    pub = @pub1
    drink = @drink1
    customer = @customer1
    #Act
    #pub sells drink
    pub.sells_drink(drink, customer)
    #Assert
    assert_equal(1000.00, pub.till)
    assert_equal(1, pub.drinks_cabinet.length)
    assert_equal("Get out my pub child or I'll call the police!!!", pub.sells_drink(@drink1, @customer1))
  end















end
