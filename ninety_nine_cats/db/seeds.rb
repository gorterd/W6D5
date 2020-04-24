# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all

cat1 = Cat.create!(birth_date: '2015/01/04', name: 'Maggie', color: 'brindle', sex: 'F', description: 'Maggie is a playful kitty!')
cat2 = Cat.create!(birth_date: '2016/05/24', name: 'Teacup', color: 'cream', sex: 'F', description: 'Small like a teacup :)')
cat3 = Cat.create!(birth_date: '2020/04/20', name: 'Nugget', color: 'purple', sex: 'M', description: 'Very smol, very cute')
