listNumbers = Array.new
for n in 0..10 do
   listNumbers.push(rand(-10..10))
end
puts listNumbers.inspect
## BASE

# Lets find the closes to zero in positive, and negative, ignoring zeros
minPositive = 10
minNegative = -10

listNumbers.each do |value|
    if value === 0 then
        next
    end

    if !value.negative? then

        if value < minPositive then
            minPositive = value
        end

    else
        if value > minNegative then
            minNegative = value
        end
    end
end

# Now lets iterate between the minimun negative and the minimun positive.

distNegative = 0
distPositive = 0
distAux      = 0
closeToZero  = 0

for i in minNegative..minPositive do

    # If we hit zero, we can stop counting negatives, and start with the positives.
    if i == 0 then
        distNegative = distAux
        distAux = 0
    else
        distAux += 1
    end
    
end
# The last value from dist aux will count for the positives
distPositive = distAux


# Now, the value with the minimun distance from zero is the one closeToZero

if distNegative == distPositive then
    closeToZero = minPositive
else
    closeToZero = distNegative > distPositive ?  minPositive :  minNegative        
end

puts "Min pos is: " + minPositive.to_s
puts "Min neg is: " + minNegative.to_s
puts "Close to Zero is: " + closeToZero.to_s
