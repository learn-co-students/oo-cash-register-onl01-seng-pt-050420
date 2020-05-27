require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items,:last_transaction_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    for i in 1..quantity do
      @items << title
    end
    @last_transaction_amount = price * quantity
    self.total += price * quantity 
  end

  def apply_discount
    if self.total == 0.0
      message = "There is no discount to apply."
    else
      self.total -= (self.total * (discount/100.0)).to_f
      message = "After the discount, the total comes to $#{self.total.to_i}."
    end
    message
  end

  def void_last_transaction
    @items.pop()
    if @items == []
      self.total = 0.0
    else
      self.total -= self.last_transaction_amount
    end
  end

end
