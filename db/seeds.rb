# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
Course.destroy_all

50.times do |course|
  Course.create(
                title: Faker::Lorem.sentence(4, false, 0).chop,
                description: Faker::Lorem.sentence(10, false, 0).chop,
                cost: Faker::Number.number(3)
                )                   
end

p "Created #{Course.count} courses"
=end

#Course.create(title: 'Course 1', description: 'This is the first course.', cost: '0')