class CashRegister
  
  attr_accessor :total, :discount, :items  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << item 
    end
    @last_transaction = price * quantity
  end
  
  def apply_discount
    if @discount != 0
      @total = (@total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
end
