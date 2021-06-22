# Casidoo Challenge 21/06/21

# Write a function that draws an ASCII art cube of given height x.
#   +--------+
#  /        /|
# /        / |
#+--------+  |
#|        |  |
#|        |  +
#|        | /
#|        |/
#+--------+

# TODO
# FIX cube sizes less than 3 and more than 5, for now only works from 4 and 5 up


def drawCube(height)

    width        = height*2
    leftSpacing  = height-1

    # Top back
    puts (" " * leftSpacing) + "+" + ("-" * width) + "+"
    
    # Top face
    leftSpacing = height-2
    rightSpace   = 0
    for i in 1..height-2 do
        puts " " * leftSpacing + "/" + (" " * width) + "/" + (" " * rightSpace) + "|"
        rightSpace+=1
        leftSpacing-=1
    end

    # Top front
    puts "+" + ("-" * width) + "+" + (" " * rightSpace) + "|"

    # Front Face
    chk = false
    for i in 1..height do
        if i < height/2 then
            rightFace = (" " * rightSpace) + "|"
        else 
            if chk
                rightFace = (" " * rightSpace) + "/"
            else 
                rightFace = (" " * rightSpace) + "+"
                chk = true
            end
            rightSpace-=1
        end
        puts "|" + (" " * width) + "|" + rightFace
    end

    # Bottom front
    puts "+" + ("-" * width) + "+"
    
end

if "#{ARGV[0]}".empty? then
    puts "Usage: ruby draw_cube.rb [HEIGHT]"
else
    drawCube(ARGV[0].to_i)
end


# $ ruby draw_cube.rb 4
#   +--------+
#  /        /|
# /        / |
#+--------+  |
#|        |  |
#|        |  +
#|        | /
#|        |/
#+--------+
