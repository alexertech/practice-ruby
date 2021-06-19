listNumbers = Array.new
for n in 0..10 do
   listNumbers.push(rand(0..10))
end
puts listNumbers.inspect
## BASE

min = listNumbers[0]

listNumbers.each do |value|
    if value < min
        min = value
    end
end

puts "Min is: " + min.to_s

