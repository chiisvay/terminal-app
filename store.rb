require_relative './course'
require_relative './price_item'
require_relative './booking'
require 'tty-prompt'
prompt = TTY::Prompt.new
require 'tty-box'
box = TTY::Box.frame
class Store 
    attr_reader :name

    def initialize(name)
        @name = name
    end
    def greeting
        puts "Welcome to DINER!"
    end
end
