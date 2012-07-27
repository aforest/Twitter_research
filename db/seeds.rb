# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create! do |user|
  user.full_name             = 'Austin Forest'
  user.email                 = 'nickodiangelo@gmail.com'
  user.password              = '484688'
  user.password_confirmation = '484688'
end

Category.create!(title: 'Business')
Category.create!(title: 'Personal')
Category.create!(title: 'Sports')
Category.create!(title: 'Politics')
Category.create!(title: 'Technology')
