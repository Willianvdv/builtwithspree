if Rails.env.development?
  user = User.create!(email: 'example@example.com', password: 'password123')
  puts "User 'example@example.com' with password 'password123' created"
end