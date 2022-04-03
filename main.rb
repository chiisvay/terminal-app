require_relative './course'
require_relative './price_item'
require 'tty-box'
require 'tty-prompt'
@prompt = TTY::Prompt.new

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
    welcome = @prompt.select("would you like to do?:", %w(Booking Exit))
    if welcome == 'Booking'
        puts "please enter time"
        booking = gets.chomp
        puts "your booking is at #{booking}.See you soon!"
    elsif welcome == 'exit'
        puts "Thanks for coming!"
    else
        puts "Goodbye"
    end