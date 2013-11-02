if Rails.env.development?
  user = User.create!(email: 'example@example.com', password: 'password123', admin: true)
  puts "Admin user 'example@example.com' with password 'password123' created"
end