class Pub

attr_reader :pub_name, :till, :drinks_cabinet


def initialize(pub_name, till, drinks_cabinet = [])
  @pub_name = pub_name
  @till = till
  @drinks_cabinet = drinks_cabinet
end

# def pub_name
#   @pub_name
# end
#
# def till
#   @till
# end
#
# def drinks_cabinet
#   @drinks_cabinet
# end

def sells_drink(drink, customer)
  found_drink = @drinks_cabinet.delete(drink)
  @till += found_drink.drink_price
  customer.buys_drink(drink)


end












end
