class CashRegister

  attr_accessor  :items, :discount, :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_total = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_total = price * quantity
  end

  def apply_discount
    if @discount != 0
    @total -= (@total * @discount.to_f / 100).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @items.delete_at(-1)
    self.total = self.total - @last_total
  end

end
