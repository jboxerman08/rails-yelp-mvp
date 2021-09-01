puts 'Cleaning up database'
Restaurant.destroy_all
puts 'Database is clean'

puts 'Creating restaurants'

5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "restaurant #{restaurant.id} is created"
end

puts 'Done!'
