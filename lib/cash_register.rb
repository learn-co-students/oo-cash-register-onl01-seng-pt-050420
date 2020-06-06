class CashRegister
    
    attr_accessor :discount, :cash_register, :total, :price, :items, :last_transaction


    def initialize(discount = 0)
    
    @total = 0
    @discount = discount
    @items = []
    # # @price = price
    end

    def add_item(item, price, quantity = 1)
        @price = price
        @total += price * quantity
        if quantity > 1
          counter = 0
          while counter < quantity
            @items << item
            counter += 1
          end
        else
          @items << item
        end
        self.last_transaction = price * quantity
      end

    def apply_discount
        if @discount > 0
       update_discount = (price * discount)/100
       @total -= update_discount
       return "After the discount, the total comes to $#{total}."
       else
        return "There is no discount to apply."
       end
    end

    def void_last_transaction
    @total -= last_transaction
    
    end

    # def destroy_all(conditions = nil)
    #     @destroy_all = destroy all
    #     find(:all, :conditions => conditions).each { |object| object.destroy }
    # end
end