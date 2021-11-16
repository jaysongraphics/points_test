# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🌋 Clearing old data..."
User.destroy_all
User.reset_pk_sequence


User.create(
    payer: "carlos P",
    points: 4500
)

User.create(
    payer: "jose a",
    points: 1700
)

User.create(
    payer: "erika P",
    points: 500
)


puts "🙌 Seeding Complete!"
