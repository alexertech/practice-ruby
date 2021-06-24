class Food
    def initialize
        @kcal = 100
    end
    def check_kcal
        puts @kcal
    end
end

class Fruit < Food
    def initialize
        @sweet_check = 50 # 0 would be acid, 100 would be very sweet
    end
end

class Citric < Fruit
end

tangerine = Fruit.new

puts tangerine.sweet_check