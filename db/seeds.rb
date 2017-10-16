# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Runnind db:seed"
if Section.count ==0
  puts "Let's create some!"
  ['Breakfast', 'Lunch', 'Dinner', 'Supper'].each do |name|
    section = Section.create(name: name)
    if section.persisted?
      puts "Saved section with name = #{name}"
    end
  end
else
  puts "Looks like you already have section!"
end