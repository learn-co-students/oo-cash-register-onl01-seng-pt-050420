class CashRegister
    attr_accessor :total, :discount, :quantity, :items, :prices

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @prices = []
    end

    def add_item(title, price, quantity = 1)
        @total += price*quantity
        quantity.times{@items.push(title)}
        @prices.push(price*quantity)
    end

    def apply_discount
        if @discount != 0
            @total -= @total*@discount/100
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @prices[-1]
        @prices.pop
        @items.pop
    end
end
