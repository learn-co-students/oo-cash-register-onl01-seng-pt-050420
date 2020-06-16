class CashRegister

  attr_accessor :total, :discount, :title, :new_total, :item_list, :last_transaction_amount
  
  def initialize(discount = 0)
    @total = total || 0
    @discount = discount
    @title = title
    @item_list = []
  end 
  
  def add_item(title, price, quantity = 1)
     self.total += price * quantity
      quantity.times do
        item_list << title
      end
    @last_transaction_amount = price * quantity
  end 
  
  def apply_discount
  discounted_total = (total * discount)/100
  self.total -= discounted_total
    if discount == 0 
      "There is no discount to apply."  
    else
    "After the discount, the total comes to $#{self.total}."
    end 
  end 
    
  def items
    item_list
 end 
 
 def void_last_transaction
    item_list.delete_at(-1)
    self.total -= @last_transaction_amount
  end

end 
