require 'faker'

puts "Cleaning up old restaurants..."
Restaurant.destroy_all

puts "Creating new restaurants..."

categories = %w[chinese italian japanese french belgian]

5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: categories.sample
  )
end

puts "Created #{Restaurant.count} restaurants 🍽️"
