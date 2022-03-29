# Numerology app refactor

#1. create get_birth_path_num method
# use array syntax to access each elemet (number) in the birthdate.
# convert each element to an integer and add them altogether.

def get_birth_path_num(birthdate)

    number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate [6].to_i + birthdate[7].to_i
    number = number.to_s
    number = number[0].to_i + number[1].to_i

    #if number is > 9 (two digit), add number again to form single digit
    if number > 9
        number = number.to_s
        number = number[0].to_i + number[1].to_i
    end

    return number
end

#2. Create get_message method
# Use Case statement to categories each number with the respective meaning

def get_message(birth_path_num)
    case birth_path_num
    when 1
        puts "Your numerology number is #{birth_path_num}. \nOne is the leader. the number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
    when 2
        puts "Your numerology number is #{birth_path_num}. \nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitve vibration. Ruled by the Moon."
    when 3
        puts "Your numerology number is #{birth_path_num}. \nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic. Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
    when 4
        puts "Your numerology number is #{birth_path_num}. \nThis is the worker. Practical, with a love of detail. Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
    when 5
        puts "Your numerolofy number is #{birth_path_num}. \nThis is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
    when 6
        puts "Your numerolofy number is #{birth_path_num}. \nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
    when 7
        puts "Your numerolofy number is #{birth_path_num}. \nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
    when 8
        puts "Your numerolofy number is #{birth_path_num}. \nThis is the manager, Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
    when 9
        puts "Your numerolofy number is #{birth_path_num}. \nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    else
        puts "Uh oh! Please input the correct birthdate"
    end
end

#3. ask user to input birthdate
puts "Enter your birthdate: 
Please enter in MMDDYYYY format"

#4. set birthdate to a variable
birthdate = gets

#5. set get_birth_path_num method to a variable (birthdate from #4.)
birth_path_num = get_birth_path_num(birthdate)

#6. set message method to a variable (birth_path_num from #5.)
message = get_message(birth_path_num)

puts message