class CashRegister
attr_accessor :discount, :total, :cash_register, :price, :quantity, :last_transaction

    def initialize(discount = 0)
    @total = 0
    @discount = discount
    @quantity = quantity
    @items = [] 
    end 
    
    def add_item(title, price, quantity=1)
        @price = price
        @total += price*quantity
        

    
         if quantity > 1
            counter = 0
        while quantity > counter
            @items << title
            counter += 1
         end
        else
            @items << title
        end
        self.last_transaction = price*quantity
    end

    def apply_discount
        
        
        if @discount > 0
         discounted_total = (price*discount)/100
        @total -= discounted_total
            return "After the discount, the total comes to $#{total}."

        else
            return "There is no discount to apply."
        end

        
    end
    
    def items
    @items
    end


    def void_last_transaction
    @total -= last_transaction
    
    end
    
end
