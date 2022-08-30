require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email addres: #{@email}"
  end
  
end

mashrur = Student.new("Mashrur", "Hossain", "themashrur", "a@b.com", "pass")
jon = Student.new("Jon", "Snow", "kinginthenirth", "jon@snow.com", "darkpass")

hashed_password = mashrur.create_hash_digest(mashrur.password)
p hashed_password