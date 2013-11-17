# Don't worry, I will replace this construction

User.all.delete_all
Webshop.all.delete_all

password = Rails.env.development? ? 'password123' : (0...8).map { (65 + rand(26)).chr }.join
user = User.create!(email: 'example@example.com', password: password, admin: true)
puts "Admin user 'example@example.com' with password '#{password}' created"

Webshop.create! name: 'Awesome webshop', url: 'http://www.example.com', featured: true

products = %w'tv glasses washmachines webshop phone radio milk sushi apple pear ruby python car scooter lamp computer speed'
products.each do |product|
  Webshop.create! name: "#{product.humanize} webshop", url: 'http://www.example.com'
end
