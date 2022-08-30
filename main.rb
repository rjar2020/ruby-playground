# require 'bundler/inline'
# gemfile true do
#   source 'http://rubygems.org'
#   gem 'bcrypt'
# end

# # # puts "Enter a number to multiply by 2"
# # # input = gets.chomp
# # # puts input.to_i * 2

# # # puts "What is your first name?"
# # # first_name = gets.chomp
# # # puts "What is your last name"
# # # last_name = gets.chomp
# # # puts "Your full name is #{first_name} #{last_name}"
# # # puts "Your full name reversedis #{last_name.reverse} #{first_name.reverse}"
# # # puts "Your name has #{(first_name+last_name).length} characters in it"

# # # puts "I am a line"
# # # puts "-" * 20
# # # puts "I am a diff line after a divider"
# # # 20.times{print "-"}

# # # puts "Simple calculator"
# # # 25.times { print "-" }
# # # puts "Enter the first number"
# # # num_1 = gets.chomp.to_f
# # # puts "Enter the second number"
# # # num_2 = gets.chomp.to_f
# # # puts "The first number multiplied by the second number is #{num_1 * num_2}"
# # # puts "The first number divided by the second number is #{num_1 / num_2}"
# # # puts "The first number added to the second number is #{num_1 + num_2}"
# # # puts "The first number minus the second number is #{num_1 - num_2}"
# # # puts "The first number mod the second number is #{num_1 % num_2}"


# def multiply(first_num, second_num)
#   first_num.to_f * second_num.to_f
# end

# def divide(first_num, second_num)
#   first_num.to_f / second_num.to_f
# end

# def substract(first_num, second_num)
#   first_num.to_f - second_num.to_f
# end

# def add(first_num, second_num)
#   first_num.to_f + second_num.to_f
# end

# def mod(first_num, second_num)
#   first_num.to_f % second_num.to_f
# end


# puts "Simple calculator"
# 25.times { print "-" }
# puts "Enter the first number"
# num_1 = gets.chomp.to_f
# puts "Enter the second number"
# num_2 = gets.chomp.to_f

# puts "What do you want to do?"
# puts "Enter 1 for multiply, 2 for addition, 3 for substraction, 4 for division, 5 for remaining / division modulus"
# user_entry = gets.chomp

# if user_entry == "1"
#   puts "You have chosen to multiply"
#   puts "The first number multiplied by the second number is #{multiply(num_1, num_2)}"
# elsif user_entry == "2"
#   puts "You have chosen to add"
#   puts "The first number added to the second number is #{add(num_1, num_2)}"
# elsif user_entry == "3"
#   puts "You have chosen to substract"
#   puts "The first number substracted from the second number is #{substract(num_2, num_1)}"
# elsif user_entry == "4"
#   puts "You have chosen to divide"
#   puts "The first number divided by the second number is #{divide(num_1, num_2)}"
# elsif user_entry == "5"
#   puts "You have chosen to do modulus"
#   puts "The first number mod the second number is #{mod(num_1, num_2)}"
# else
#   puts "Invalid entry"
# end


# condition = false
# another_condition = false
# if !condition || another_condition
#   puts "This evaluated to true"
# else
#   puts "this evaluated to false"
# end
# puts "La la la"

# name = "Evgeny"

# if name == "Mashrur"
#   puts "Welcome to the program, Mashrur"
# elsif name == "Jack"
#   puts "Welcome to the program, Jack"
# elsif name == "Evgeny"
#   puts "Welcome to the program, Evgeny"
# else
#   puts "Welcome to the program, User"
# end

# sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
# my_details = {:name => 'mashrur', :favcolor => 'red'}
# my_hash = {}
# p my_details['favcolor']
# p sample_hash['b']

# my_details.each do |key, value|
#   puts "The class for key is #{key.class} and the value is #{value.class}"
# end

# myhash.each {|some_key, some_value | puts "The key is #{some_key} and the value is #{some_value}"}

# users = [
#   {username: "Ab", password: "pass1"},
#   {username: "jack", password: "pass2"},
#   {username: "arya", password: "pass3"},
#   {username: "jonsnow", password: "pass4"},
#   {username: "rjar", password: "pass5"}
# ]

# def auth_user (username, password, users_db)  
#   users_db.each do |user|
#     if user[:username] == username && user[:password] == password
#       return user
#     end
#   end
#   "Credentials were not correct"
# end

# puts "Welcome to the Authenticator"
# 25.times { print "-"}
# puts
# puts "This program wil take input from the user and compare password"
# puts "If password is correct, you will get back the user object"
# continue = 'y'
# attempts = 1
# while continue != 'n' && attempts <= 3
#   print "Username: "
#   username = gets.chomp.to_s
#   print "Password: "
#   pass = gets.chomp.to_s
#   user_found = auth_user(username, pass, users)
#   if !user_found.is_a?(String) then attempts = 0 end
#   puts user_found
#   puts "Press n to quit or any key to continue"
#   continue = gets.chomp.downcase
#   attempts += 1
#   puts "You have exceedded the number of incorrect attempts" if attempts == 4
# end

# dial_book = {
#   "newyork" => "212",
#   "caracas" => "343",
#   "barcelona" => "543",
#   "london" => "678",
#   "paris" => "917",
#   "madrid" => "209",
#   "fez" => "242",
#   "marrakech" => "918",
#   "girona" => "917",
#   "tarragona" => "096"
# }

# def get_city_name(hashmap)
#   hashmap.keys
# end

# def get_area_code(hashmap, key)
#   hashmap[key]
# end

# loop do
#   puts "Do you want to lookup an area code based on a city name? (Y/N)"
#   answer = gets.chomp.downcase
#   break if answer != "y"
#   puts get_city_name(dial_book)
#   print "Enter your selection: "
#   city_name = gets.chomp
#   if dial_book.include?(city_name)
#     puts  "The area code for #{city_name} is #{get_area_code(dial_book, city_name)}"
#   else
#     puts "You entered an invalid city name"
#   end
# end

# require 'bcrypt'
# my_password = BCrypt::Password.create("my password")

# puts my_password
# puts my_password.version
# puts my_password.cost
# puts my_password == "my password"
# puts my_password == "no my password"

# my_password = BCrypt::Password.new("$2a$12$QfQ7YJj72aEUtuhGnrBWWeq5aGbo3iyu51fXsyYMJyIjDKlj.9bwa")
# puts my_password == "my password"
# puts my_password == "no my password"

# require 'bcrypt'
# my_password = BCrypt::Password.create("my password")

# puts my_password

# $LOAD_PATH << "."
require_relative 'crud'

users = [
  {username: "Ab", password: "pass1"},
  {username: "jack", password: "pass2"},
  {username: "arya", password: "pass3"},
  {username: "jonsnow", password: "pass4"},
  {username: "rjar", password: "pass5"}
]


hashed_users = Crud.create_secure_users(users)
puts hashed_users