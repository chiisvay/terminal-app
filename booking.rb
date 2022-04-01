class Booking
    def initialize 
        @booking_time = Hash.new(0)
    end
    def add_time(name, time)
        @booking_time[name] = time
    end
    def gets_times
        return @booking_time
    end
end