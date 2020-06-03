class CashRegister
  
  attr_accessor :total, :discount, :items, :transactions
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @transactions = []
  end

  def add_item(title, price, quantity = 1)
    transaction = price * quantity
    self.total += transaction
    quantity.times do
      self.items << title 
    end
    self.transactions << transaction
  end
  
  def apply_discount
    if @discount == 0 
      return "There is no discount to apply."
    end
      @total -= @total * @discount / 100.0 
      return "After the discount, the total comes to $#{@total.to_i}."
  end
  
  def void_last_transaction
    @total -= @transactions.pop
  end
end


    