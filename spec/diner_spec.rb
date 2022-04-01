require_relative '../price_item'
require_relative '../course'
require_relative '../booking'
require_relative '../store'

describe PricesItem do
    it 'should return the price of the item' do
        name = "breakfast"
        price = 15.00
        price_item = PricesItem.new(name, price)
        expect(price_item.price).to eq(price)
    end
        it 'should return the name of the item' do
            name = "breakfast"
            price = 15.00
            price_item = PricesItem.new(name, price)
            expect(price_item.name).to eq(name)
    end
end

describe Course do
    it 'should return the courses' do
        name = "breakfast"
        price = 15.00
        course = Course.new
        course.add_item(name, price)
        expect(course.get_price(name)).to eq(price)
    end
    it 'should be able to add courses' do
        name = "breakfast"
        price = 15.00
        course = Course.new
        course.add_item(name, price)
        expect(course.get_item().length).to be(1) 
    end
end
describe Booking do
    it ' should be able to making a booking' do
        bookings = Booking.new
        name = "user"
        time = 8.00
        bookings.add_time(name, time)
    end 
end
describe Store do
    it ' should create a store' do
        name = "Diner"
        price_item = {}
        store = Store.new(name, price_item)
        expect(store.name).to eq(name)
    end
end
