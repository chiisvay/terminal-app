class Course
    attr_reader :menu, :glass, :dessert

    def initialize(menu, glass, dessert)
        @menu = menu
        @glass = glass
        @dessert = dessert
    end
    def self.display_morning
        puts "bacon egg open sandwich, orange juice, mini pancakes"
    end
    def self.display_noon
        puts "spaghetti carbonara, champange, mini mudcake"
    end
    def self.display_night
        puts "steak with veggie, wine, mini cheesecake"
    end
end
# Course.display_morning
# Course.display_noon
# Course.display_night
