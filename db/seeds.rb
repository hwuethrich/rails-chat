# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless User.any?
  5.times do
    User.create name: Faker::FunnyName.name
  end
end

unless Message.any?
  users = User.all

  10.times do
    Message.create text: Faker::Lorem.sentence, user: users.sample
  end
end
