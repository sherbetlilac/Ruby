# put number as a variable
number = 0

# print number from 1 to 100
# for multiples of 3, print "Fizz"
# for multiples of 5, print "Buzz"
# for multiples of 3 and 5, print "FizzBuss"

while number < 101
    if number %3 == 0 && number %5 == 0
        puts "FizzBuzz"
    elsif number %3 == 0
        puts "Fizz"
    elsif number %5 == 0
        puts "Buzz"
    else
        puts number
    end
    number += 1
end