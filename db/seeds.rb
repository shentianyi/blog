# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'build admin user'
unless User.find_by_email(ENV['DEFAULT_USER_EMAIL'])
  User.create(name: 'Charlot',
              email: ENV['DEFAULT_USER_EMAIL'],
              password: ENV['DEFAULT_USER_PASSWORD'],
              password_confirmation: ENV['DEFAULT_USER_PASSWORD'], is_admin: true)
end

puts 'build category'
%w(Ruby Rails Linux JavaScript).each_with_index do |c, i|
  Category.create(name: c, rank: i) unless Category.find_by_name(c)
end




