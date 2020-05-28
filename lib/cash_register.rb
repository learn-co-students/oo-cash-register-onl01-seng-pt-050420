require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :old_total
  
  def initialize(discount=nil)
    @total = 0 
    @discount = discount
    @title = []
    @old_total = 0
  end
  
  def add_item(title, price, quantity = 1)
    if quantity == 1 
      @title << title
    elsif quantity > 1 
      i = 1
      while i < quantity + 1 do 
        @title << title 
        i += 1
      end
    end
    @old_total = total
    @total += price * quantity
  end
  
  def apply_discount
    if @discount != nil
      @discount = @discount.to_f 
      @discount = @discount/100
  
      @total = @total - (@discount * total)
      @total = @total.to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @title
  end
  
  def void_last_transaction

    @total = @old_total
  end
  
  
  
  
  
  
  
  
  
end