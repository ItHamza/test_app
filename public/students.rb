require_relative 'passwords'

class Student

  include Crud

  attr_accessor :first_name, :last_name, :username, :email, :password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "FirstName: #{first_name}, LastName: #{last_name}, Username: #{username}, EmailAddress: #{email}, Password: #{password}"
  end
end

hamza = Student.new("ameer", "hamza", "itshamza", "hamza@gmail.com", "3210")
noone = Student.new("un", "known", "nothing", "no@mail.com", "whatever")

hashed_pass = hamza.create_hash(hamza.password)

print hashed_pass