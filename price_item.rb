class PricesItem
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end
    def price_display
        puts "#{name}, #{price}"
    end
    def self.display_price
        puts "Breakfast $15.00, Lunch $25.00, Dinner $40.00"
    end
end

# morning_price = PricesItem.new("Breakfast", 15.00)
# lunch_price = PricesItem.new("Lunch", 25.00) 
# dinner_price = PricesItem.new("Dinner", 40.00)
# p morning_price
# p lunch_price
# p dinner_price
