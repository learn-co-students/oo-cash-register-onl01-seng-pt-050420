class CashRegister
  
  attr_accessor :total, :discount, :items, :last

    def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do
      @items << title
    end
    @last = (price * quantity)
  end
  
  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total = @total - @last
  end
  
end