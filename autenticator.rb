
users = [
    {username: "Fernando", password: "Alohomorax2" },
    {username: "Arturia", password: "Avalon23" },
    {username: "Aragorn", password: "NotIsildur2" }
]

def autentication_function(username, password, array)
    array.each do | userkey |
        if userkey[:username] == username && userkey[:password] == password
            return true
        else
           return false
        end
    end
end
    

puts "Welcome to the autenticator"
30.times {print "-"}
puts
puts "This program will take an input from the user and compare passwords"
puts "If passwords is incorrect, you will get back the user object"
puts
user_attemps = 1
    while user_attemps <= 3
        puts "User: "
        user_name = gets.chomp
        puts "Password: "
        user_password = gets.chomp
        puts
        user_check = autentication_function(user_name, user_password, users)
        if user_check
            puts "Autentication succesfull"
            puts
            break
        elsif user_attemps > 2
            puts "Maximun atempts reach"
            puts
            break
        else !user_check
            puts "The username or password is incorrect"
            puts
            puts "press n to quit or any other key to continue: "
            validation_key = gets.chomp.downcase
            break if validation_key == "n"
        user_attemps += 1
            puts
    end
end