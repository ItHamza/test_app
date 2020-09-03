module Crud
  require 'bcrypt'

  puts "Crud Module Activated"

  def create_hash(password)
    BCrypt::Password.create(password)
  end

  def verify_hash(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(list_user)
    list_user.each do |record|
      record[:password] = create_hash(record[:password])
    end
    list_user
  end

  def authenticate_user(username, password, list_user)
    list_user.each do |record|
      if record[:username] == username && verify_hash(record[:password]) == password
        return record
      end
    end
    "No matching Record found"
  end

end