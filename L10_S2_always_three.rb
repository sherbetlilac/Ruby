puts "Give me a number."
first_number = gets.to_i
final_number = first_number
final_number += 5
final_number *= 2
final_number -= 4
final_number /= 2
final_number -= first_number
puts "Always #{final_number}"