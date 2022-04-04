class Booking
    attr_reader :time

    def initialize(times)
        @times = times
    end
    def time_display
        return @times
    end
end
# time = Booking.new(3.00)
# p time