# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'build admin user'
unless User.find_by_email('7wangsong@gmail.com')
  User.create(name: 'Charlot', email: '7wangsong@gmail.com', password: 'charlot_blog', password_confirmation: 'charlot_blog', is_admin: true)
end

puts 'build category'
%w(Ruby Rails Linux JavaScript).each_with_index do |c, i|
  Category.create(name: c, rank: i) unless Category.find_by_name(c)
end




