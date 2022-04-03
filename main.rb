require_relative './course'
require_relative './price_item'
require 'tty-prompt'
prompt = TTY::Prompt.new
require 'tty-box'
box = TTY::Box.frame
        # Welcome messege to user
    print TTY::Box.frame "Welcome to DINER!" 
        # ask user what they want to see
        puts "What would you like to see? \n"
        puts "Price"
        puts "Menu"
        # get user input
        user = gets.chomp 
        loop do
case 
        # if user select price
when user == "price"
        # output prices
        puts PricesItem.display_price
        # if user select menu
when user == "menu"
        #  output menus
        puts "breakfast", Course.display_morning
        puts "lunch", Course.display_noon
        puts "dinner", Course.display_night
        #  if user selects nothing
else   
    "Oops, please try again!"
end
        # if user wants to make a booking or exit
        puts "What would you like to do?"
        puts "Booking"
        puts "Exit"
        user = gets.chomp
        # user selects booking
    if user == "booking"
        # ask user th enter time
        puts "please enter a time" 
        booking = gets.chomp
        # output the time
        puts "your booking is at #{booking}"
        # output a message
        puts "See you soon!"
        break
        # user do not want to continue
    else user == "exit"
        # exit message
        puts "Thanks for coming"
        break
    end
end