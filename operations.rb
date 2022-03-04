def multiply(first_number, second_num)
    first_number.to_f * second_num.to_f
end

def division(first_number, second_num)
    first_number.to_f / second_num.to_f
end

def suma(first_number, second_num)
    first_number.to_f + second_num.to_f
end

def resta(first_number, second_num)
    first_number.to_f - second_num.to_f
end

def moduleget(first_number, second_num)
    first_number.to_f % second_num.to_f
end

puts "Simple Calculator"
20.times { print "-"}
puts
puts "Enter the first number"
first_number = gets.chomp
puts "Enter your second number"
last_number = gets.chomp

puts " - Pick 1 for division"
puts " - Pick 2 for Multiply"
puts " - Pick 3 for add"
puts " - Pick 4 for abstract"
puts " - Pick 5 for module"
puts "What do you want to do?"
user_choice = gets.chomp
if user_choice == "1"
    puts
    puts "el resultado de la division es  #{division(first_number, last_number)}"
elsif user_choice == "2"
    puts
    puts "el resultado de la multiplicacion es #{multiply(first_number, last_number)}"
elsif user_choice == "3"
    puts
    puts "el resultado de la suma es  #{suma(first_number, last_number)}"
elsif user_choice == "4"
    puts
    puts "el resultado de la resta es  #{resta(first_number, last_number)}"
elsif user_choice == "5"
    puts
    puts "el resultado del modulo es  #{moduleget(first_number, last_number)}"
else
    puts
    puts "invalido entry"

end

