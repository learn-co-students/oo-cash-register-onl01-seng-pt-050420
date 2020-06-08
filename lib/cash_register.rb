require 'pry'
class CashRegister
  
  attr_accessor :discount, :total, :last_item
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_item = price * quantity
  end
  
  def apply_discount
    if self.discount > 0
      self.discount = self.discount/100.to_f
      self.total = self.total - (self.total * (self.discount))
      "After the discount, the total comes to $#{self.total.to_i}."
    elsif self.discount <= 0
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    if @items.length > 0
      @total -= @last_item
    else
      @total = 0.to_f
    end
  end
end
