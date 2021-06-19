# Given a direction and a number of columns, write a function that 
# outputs an arrow of asterisks
def printArrow(direction, columns)
    col = columns-1
   
    if direction == "left" then
        range_to_right = 0..col
        col-=1
        range_to_left  = col.downto(0)        
    else
        range_to_right = col.downto(0)
        range_to_left  = 1..col         
    end
    
    range_to_right.each  do |i|
        spaces = " " * i
        puts spaces + "*"
    end
    range_to_left.each  do |i|
        spaces = " " * i
        puts spaces + "*"
    end

end

if "#{ARGV[0]}".empty? or "#{ARGV[1]}".empty? then
    puts "Usage: ruby arrow.rb [LEFT-RIGHT] [NUM]"
else
    printArrow("#{ARGV[0]}", ARGV[1].to_i)
end