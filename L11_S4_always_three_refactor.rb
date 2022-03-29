# always three script
#def always_three
#    puts "Give me a number."
#    first_number = gets.to_i
#    puts "Always" + (((((first_number + 5) * 2) - 4) / 2) - first_number).to_s
#end

#always_three



# create method for always_three
# convert number to string

def always_three (number)
    (((((number + 5) * 2) - 4) / 2) - number).to_s
end

# ask user to input number

puts "Give me a number."
first_number = gets.to_i

puts "Always " + always_three(first_number).to_s