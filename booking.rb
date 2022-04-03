class Booking
    attr_reader :time
    def initialize(times)
        @times = times
    end
    def time
        return @times
    end
end
Booking.time