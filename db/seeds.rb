# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 100.times do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name

#   Employee.create(
#     first_name: first_name,
#     last_name: last_name,
#     email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
#     ssn: Faker::Medical::SSN.ssn,
#     birthdate: Faker::Date.between(18.years.ago, 65.years.ago)
#     )
# end


200.times do
  Address.create(
    :street_address_1 => Faker::Address.street_address,
    :street_address_2 => Faker::Address.secondary_address,
    :city => Faker::Address.city,
    :state => Faker::Address.state,
    :zip_code => Faker::Address.zip_code,
    :employee_id => rand(1..100)
  )
end
