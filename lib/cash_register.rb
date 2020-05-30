
require 'pry'
class CashRegister

    attr_accessor :discount, :total, :quantity, :price, :items, :title

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @price = 0
        @items = []
        @items << title
    end

    def total=(total)
        @total = total
    end
    
    def add_item(title, price, quantity=1)
        @total += price * quantity
        @quantity = quantity 
        @price = price
        @title = title
        if @quantity > 0
            counter = 0
            while counter < quantity
                @items << self.title
                counter+=1
            end
        end
    end

    def apply_discount
        if @discount != 0
            discounted_price = (price * discount) / 100
            @total = price - discounted_price 
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end 
    end

    def items
        @items.compact
    end

    def void_last_transaction
        @total -= price * quantity
    end
end
