require_relative '../price_item'
require_relative '../course'
require_relative '../booking'
require_relative '../store'
require 'csv'
describe PricesItem do
    it 'return the name of the item' do
        name = "breakfast"
        price = 15.00
        price_item = PricesItem.new(name, price)
        expect(price_item.name).to eq "breakfast"
    end
        it 'return the price of the item' do
            name = "breakfast"
            price = 15.00
            price_item = PricesItem.new(name, price)
            expect(price_item.price).to be == 15.00
    end
end

describe Course do
    it 'return the menu item' do
        menu = "bacon egg sandwhich"
        glass = "juice"
        dessert = "mini pancakes"
        courses = Course.new(menu, glass, dessert)
        expect(courses.menu).to eq(menu)
    end
    it 'return the glass' do
        menu = "bacon egg sandwhich"
        glass = "juice"
        dessert = "mini pancakes"
        courses = Course.new(menu, glass, dessert)
        expect(courses.glass).to eq(glass)
    end
    it 'return the dessert' do
        menu = "bacon egg sandwhich"
        glass = "juice"
        dessert = "mini pancakes"
        courses = Course.new(menu, glass, dessert)
        expect(courses.dessert).to eq(dessert)
    end
end

describe Booking do
    it 'making a booking' do
        time = 8.00
        expect(8.00).to be == (8.00)
    end 
end

describe Store do
    it 'should create a store' do
        store = "diner"
        expect(store).to eq 'diner'
    end
end