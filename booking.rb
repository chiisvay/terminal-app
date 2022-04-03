class Booking
    attr_reader :time
    def initialize(times)
        @time = time
    end
    def time
        return @time
    end
end
    # def booking_time
    #     return @time= Hash.new(0)
    # end
    # def add_time(name, time)
    #     @booking_time[name] = time
    # end
    # def gets_times
    #     return @booking_time
    # end
    # def to_s
    #     self.time 
    # end