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
  if customer.age >= 18
    if customer.drunkeness <= 4
       found_drink = @drinks_cabinet.delete(drink)
       @till += found_drink.drink_price
       customer.buys_drink(found_drink)
    else
      return "Not again Rab!"
    end
  else
    return "Get out my pub child or I'll call the police!!!"
  end
end












end
