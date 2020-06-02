class CashRegister
  attr_accessor :total, :discount, :items, :last_item_amount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items =[]
  end

  def instance_variable_get(total)
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @total = @total + (price*quantity)
    quantity.times { @items << title }
    self.last_item_amount = price*quantity
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total - (@total*(@discount/100.to_f))
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def void_last_transaction
    @total = @total - @last_item_amount
  end
end