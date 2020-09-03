require_relative 'passwords'


users = [
    {username: "hamza", password: "password"},
    {username: "usman", password: "password2"},
    {username: "jawad", password: "password3"},
    {username: "ali", password: "password4"},
  ]

hash_users = Crud.create_secure_users(users)
puts hash_users