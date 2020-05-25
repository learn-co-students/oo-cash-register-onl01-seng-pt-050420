class CashRegister
  attr_accessor :transaction, :discount, :total, :items
  def initialize(e_disc=0)
    @discount = e_disc 
    @total = 0 
    @items = []
  end
  
  def add_item(name, price, quant=1)
    @total = @total + (price * quant)
    quant.times do
      @items << name 
    end 
    self.transaction = price * quant
  end
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  def void_last_transaction
    self. total = self.total - self.transaction
  end
end