require_relative './course'
require_relative './price_item'
require 'tty-box'

box = TTY::Box.frame
        # Welcome messege to user
    print TTY::Box.frame "Welcome to DINER!" 
        # get user input
prompt = "> "
 # ask user what they want to see
puts "What would you like to see? \nPrice\nMenu"
print prompt

while user = gets.chomp
    case user
         # if user select price
    when "price"
         # output prices
        puts PricesItem.display_price
        break
    when "menu"
         #  output menus
        puts "breakfast", Course.display_morning
        puts "lunch", Course.display_noon
        puts "dinner", Course.display_night
        break
    else 
        #  if user selects nothing ask them again
        puts "Please select either price or menu "
        print prompt
    end
end
prompt = "> "
 # ask user what they want to see
puts "What would you like to do?\nBooking\nExit"
print prompt

while user = gets.strip
    case 
         # if user select price
    when "booking"
         # output prices
         # ask user th enter time
            puts "please enter a time" 
            booking = gets.chomp
            # output the time
            puts "your booking is at #{booking}"
            # output a message
            puts "See you soon!"
        break
    when "exit"
         #  output menus
        puts "Thanks for coming"
        break
    else 
        #  if user selects nothing ask them again
        puts "Please select either booking or exit "
        print prompt
    end
end