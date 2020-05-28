class CashRegister 
  
 attr_accessor :discount, :total, :item, :shopping_cart, :last_transaction_amount
 

 
  def initialize(discount = 0) 

    @total = 0
    @discount = discount if discount != 0
    @shopping_cart = []
    @last_transaction_amount = 0
   end 
   
   def add_item(item, price, quantity = 1)
     i_info = {}
     i_info[:name] = item 
     i_info[:price] = price 
     i_info[:quantity] = quantity
     
     @shopping_cart << i_info
   
     @last_transaction_amount = price * quantity
     @total += price * quantity
     
   end 
   
   def apply_discount
     if @discount 
       total_discount = (@total * @discount) / 100
       @total -= total_discount
       result = "After the discount, the total comes to $#{@total}."
     else 
      result = "There is no discount to apply."
     end 
    return result 
  end 
  

    def items 
      name = []
      @shopping_cart.each do |i_info|
        for qty in 1.. i_info[:quantity]
        name << i_info[:name]
      end 
    end
    name 
      
    end 
  
  def void_last_transaction
  
  @total -= @last_transaction_amount 
  end

end 
 