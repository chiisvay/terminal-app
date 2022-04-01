require_relative './price_item'

class Course
    def initialize
        @price_items = []
    end
    def add_item(name, price)
        price_item = PricesItem.new(name, price)
        @price_items << price_item
    end
    def get_price(name)
        item = @price_items.find {|price_item| price_item.name == name}
        return item.price
    end
    def get_item
        return @price_items
    end
end
