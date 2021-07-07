<<<<<<< HEAD
class CashRegister 
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  
  end
  
  def add_item(title,price,quantity = 1)
    @total += price * quantity
    @price =  price * quantity
    i = 0 
    while(i < quantity)
     @items << title 
      i += 1 
    end
  end
  
  def apply_discount
    if @discount == 0 
    return "There is no discount to apply."
  end
   @total -= @total * @discount / 100
   return "After the discount, the total comes to $#{@total}."
end


def void_last_transaction
    @total -= @price 
end

=======
class CashRegister
attr_accessor:total,:discount, :items

   def initialize(discount = 0)
    	@total = 0
    	@discount = discount.to_f
    	@items = []
   end

   def add_item(item,price,quantity=1)
    	i = 0 
    	while (i < quantity)
      	@items << item 
      	i += 1
    	end
    	@last_transaction = (price * quantity).to_f
    	@total += (price*quantity).to_f
   end

   def apply_discount
    	if(@discount == 0)
    	  return "There is no discount to apply."
    	else
    	  @total -= (@total *  (@discount/ 100))
	      return "After the discount, the total comes to $#{@total.to_i}."
	    end
  end


   def void_last_transaction
    	@total -= @last_transaction
   end
>>>>>>> cc88fa687a9260be6afc552d00d16f8936aa921a
end