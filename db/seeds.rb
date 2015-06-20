# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

books = [['The Laughing Monsters', 'Denis Johnson'], ['The Children Act', 'Ian McEwan'], ['Station Eleven', 'Emily St. John Mandel'], ['The Bone Clocks', 'David Mitchell'], ['The Pearl That Broke Its Shell', 'Nadia Hashimi']]

books.each do |title, author|
  Book.find_or_create_by title: title, author: author
end
