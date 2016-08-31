# Adding a default admin user
user = User.create(email: 'admin@example.com', password: '12345678')
puts "User added with email: admin@example.com and password: 12345678"
user.add_role :admin
puts "User given role of admin"
