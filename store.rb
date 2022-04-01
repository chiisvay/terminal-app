require_relative './course'
require_relative './booking'
class Store 

    attr_reader :name, :course
    def initialize(name, price_items)
        @name = name
        @course = Course.new
        add_menu(price_items)
        @booking = Booking.new
    end

    def add_menu(price_items)
        price_items.each do |name, price|
            @course.add_item(name, price)
        end
    end
    def add_to_booking(time, course)
        @booking.add_time(time, course)
    end
end