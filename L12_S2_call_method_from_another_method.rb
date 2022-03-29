# method for current_hour
def determine_current_hour
    current_time = Time.new
    current_hour = current_time.hour
end

# method for greeting, insert current_hour method inside
def greeting(name)
   
    current_hour = determine_current_hour

    if (current_hour >= 3 && current_hour < 12)
        time = "morning"
    elsif (current_hour >= 12 && current_hour < 18)
        time = "afternoon"
    elsif (current_hour >= 18 && current_hour < 3)
        time = "evening"
    end

    puts "Good #{time}, #{name.capitalize}!"
end

greeting ("Emily")


##########################################################

#1. create method for current_hour

def determine_current_hour
    current_time = Time.new
    current_hour = current_time.hour
end

#2. create method for get_name

def get_name (first_name, last_name)
    full_name = first_name + last_name
end

#3. create method for greeting, insert current_hour method and get_name inside
def greeting (name)
   
    current_hour = determine_current_hour

    if (current_hour >= 3 && current_hour < 12)
        time = "morning"
    elsif (current_hour >= 12 && current_hour < 18)
        time = "afternoon"
    elsif (current_hour >= 18 && current_hour < 3)
        time = "evening"
    end

    puts "Good #{time}, #{name.capitalize}!"
end

#4. ask user to input name
puts "Enter your first name and last name: "

#5. set name to a variable
first_name = gets.strip
last_name = gets.strip

#6. set name (for #3 greeting method) to a variable (from #2 get_name method)
name = get_name(first_name, last_name)

#7. set message method to a variable (from #3 greeting method.)
message = greeting(name)

puts message