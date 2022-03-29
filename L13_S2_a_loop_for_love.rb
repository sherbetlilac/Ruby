puts "Do you love me?"
answer = gets.chomp.downcase

while (answer == "no")
    puts "Do you love me?"
    answer = gets.chomp.downcase
end

puts "I love you."