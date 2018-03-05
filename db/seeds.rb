require 'faker'
10.times do

restaurant = Restaurant.new(


name: Faker::Company.name,
address: Faker::Address.street_address,
location: Faker::Address.city,
cuisine: Faker::Address.country,
description: Faker::Lorem.sentence,
phone_number: Faker::Number.number(9),
price_for_two: Faker::Number.between(7, 200),
working_hours:  Faker::Number.between(11, 13).to_s + '-' + Faker::Number.between(19, 23).to_s,
has_community: Faker::Boolean.boolean,
has_recycling: Faker::Boolean.boolean,
has_sourcing: Faker::Boolean.boolean,
photos: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTNMecUlu3OTXWxvHASQ9T_uoRCIaYX9_mSrWcTUdPqQQEthWq"
)

restaurant.save!

end


5.times do

user = User.new(

first_name: Faker::Name.first_name,
last_name: Faker::Name.last_name,
username: Faker::Internet.user_name,
password: Faker::Internet.password(8),
email: Faker::Internet.free_email,
token_wallet: Faker::Number.between(10, 1000),
photo: "https://avatars0.githubusercontent.com/u/25618195?v=4"
)

user.save!

end

4.times do

offers = Offer.new(

expiration_date: Faker::Date.forward(90),
company: Faker::Company.name,
token_value: Faker::Number.between(10, 10000),
description: "Best Voucher you will ever see in your life!",
photo: "https://media.portaldaqueixa.com/l/5c8b42fbeb5ac309881b5321b8085e5a.jpg"
)

offers.save!

end

















# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
