class PricesItem
    attr_reader :price, :name

    def initialize(price, name)
        @name = name
        @price = price
    end
    def self.display_price
        puts "Breakfast $15.00, Lunch $25.00, Dinner $40.00"
    end
end


# PricesItem.display_price