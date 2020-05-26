require 'pry'

class CashRegister

  attr_accessor :discount, :total, :items, :basket

  def initialize(employee_discount=0)
    @total = 0
    @employee_discount = employee_discount
    @items = []
    @basket = []
  end

  def discount
    @employee_discount
  end

  def total
    @total
  end

  def add_item(name, price, quantity=1)
    current_item = {
      :item => name,
      :price => price,
      :quantity => quantity
    }
    @basket << current_item

    if quantity != 1
      count = quantity
      while count > 0
        @items << name
        count -= 1
      end
      adjusted_for_quantity = price * quantity
      @total += adjusted_for_quantity
    else
      @items << name
      @total += price
    end
  end

  def apply_discount
    if @employee_discount == 0
      return "There is no discount to apply."
    else
      discount_by = 1.to_f - (@employee_discount.to_f/100.to_f)
      @total = @total * discount_by
      return "After the discount, the total comes to $#{@total.round}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    if @basket.length == 0
      return 0.to_f
    else
      amount_reduced = @basket[-1][:price]
      if @basket[-1][:quantity] > 1
        quantity = @basket[-1][:quantity]
        @total -= amount_reduced * quantity
      else
        @total -= amount_reduced
      end
      @basket.delete(@basket[-1])
      @items.delete(@items[-1])
    end
    @total
  end

end
