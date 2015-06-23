# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

user_names = ['John Doe', 'Allam Britto', 'Bob Dylan', 'Alice Cooper', 'Alice Pasquini']

user_names.each do |user_name|
  user_params = {
    first_name: user_name.split(' ').first,
    last_name: user_name.split(' ').last,
    email: "#{user_name.downcase.gsub(' ', '.')}@example.com",
    password: '12345678'
  }
  User.find_or_create_by user_params
end

puts 'Users have been successfully created'

adviser_names = ['Alex Morgan', 'Nadine Angerer', 'Michelle Akers', 'Mia Hamm', 'Lady Andrade']

adviser_names.each do |adviser_name|
  adviser_params = {
    first_name: adviser_name.split(' ').first,
    last_name: adviser_name.split(' ').last,
    email: "#{adviser_name.downcase.gsub(' ', '.')}@example.com",
    password: '12345678'
  }
  Adviser.find_or_create_by adviser_params
end

puts 'Advisers have been successfully created'

books = [['The Laughing Monsters', 'Denis Johnson'], ['The Children Act', 'Ian McEwan'], ['Station Eleven', 'Emily St. John Mandel'], ['The Bone Clocks', 'David Mitchell'], ['The Pearl That Broke Its Shell', 'Nadia Hashimi']]

books.each do |title, author|
  Book.find_or_create_by title: title, author: author
end

puts 'Books have been successfully created'
