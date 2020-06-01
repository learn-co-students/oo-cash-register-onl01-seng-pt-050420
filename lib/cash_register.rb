class CashRegister
    attr_accessor :total, :discount, :items, :last_purchase, :price_data

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def items 
        @items 
    end

    def add_item(title,price, amount = 1)
        self.total += price * amount
            amount.times do 
                items << title
            end
            self.price_data = price 
            self.last_purchase = price * amount
    end

    def apply_discount
        if discount == 0 
            return "There is no discount to apply."
        end
        @total -= (@total * @discount/100)
        "After the discount, the total comes to $#{@total}."
    end

    def void_last_transaction
        @total -= @last_purchase #simple and easy! 
    end
end
