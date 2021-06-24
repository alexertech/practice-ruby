class Cat 
    def initialize
      @fur         = 1000 # Max 5000
      @jump_height = 10   # Meters
    end
    def meow
        puts "meow meow"
    end
    def jump
        puts "vertical jump of " + @jump_height.to_s + " mt"
    end
    def clean
        @fur-=100
        puts "fur is reduced by 100, remining fur " + @fur.to_s
    end
end

kitten = Cat.new
kitten.meow

# Create a method
def kitten.scratch
    puts "claws activated"
end

kitten.scratch
puts kitten.jump
puts kitten.clean