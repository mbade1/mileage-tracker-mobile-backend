# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#3 Users Seeded
ross = User.create(username: 'Ross', password_digest: 'password', email: 'ross@gmail.com')
sandra = User.create(username: 'Bob', password_digest: 'password', email: 'sandra@gmail.com')
joe = User.create(username: 'Joe', password_digest: 'password', email: 'joe@gmail.com')


# 9 Pairs of Shoes (3 per user) seeded
hokas_green = Shoe.create(user_id: 1, current_mileage: 100, name: 'Hoka Green', new_mileage: 100, date_of_purchase: '2020-10-01')
hokas_blue = Shoe.create(user_id: 1, current_mileage: 30, name: 'Hoka Blue', new_mileage: 0, date_of_purchase: '2020-10-05')
hokas_pink = Shoe.create(user_id: 1, current_mileage: 18, name: 'Hoka Pink', new_mileage: 0, date_of_purchase: '2020-11-01')

altras_yellow = Shoe.create(user_id: 2, current_mileage: 200, name: 'Altras Yellow', new_mileage: 0, date_of_purchase: '2020-09-01')
altras_red = Shoe.create(user_id: 2, current_mileage: 15, name: 'Altras Red', new_mileage: 0, date_of_purchase: '2020-10-29')
altras_lavender = Shoe.create(user_id: 2, current_mileage: 600, name: 'Altras Lavender', new_mileage: 0, date_of_purchase: '2020-05-29')

ole_reliable = Shoe.create(user_id: 3, current_mileage: 6000, name: 'Ole Reliable', new_mileage: 0, date_of_purchase: '2000-02-27')
rusty = Shoe.create(user_id: 3, current_mileage: 10000, name: 'Rusty', new_mileage: 500, date_of_purchase: '1990-01-05')
winter = Shoe.create(user_id: 3, current_mileage: 500, name: 'Winter Boots', new_mileage: 0, date_of_purchase: '2016-12-25')

# 16 Runs created (8 fo hokas_green(shoe_id:1), 5 for hokas_blue(shoe_id: 2), 3 for hokas_pink(shoe_id:3) per Shoe)

# t.integer "shoe_id"
# t.date "date_of_run"
# t.decimal "distance_of_run"
# t.string "image_of_run"

run_one = Run.create(shoe_id: 1, date_of_run: '2020-10-06', distance_of_run: 1.5, image_of_run: 'image.jpg')
run_two = Run.create(shoe_id: 1, date_of_run: '2020-10-08', distance_of_run: 5.5, image_of_run: 'image.jpg')
run_three = Run.create(shoe_id: 1, date_of_run: '2020-10-10', distance_of_run: 20.1, image_of_run: 'image.jpg')
run_four = Run.create(shoe_id: 1, date_of_run: '2020-10-15', distance_of_run: 26.4, image_of_run: 'image.jpg')
run_five = Run.create(shoe_id: 1, date_of_run: '2020-10-16', distance_of_run: 20, image_of_run: 'image.jpg')
run_six = Run.create(shoe_id: 1, date_of_run: '2020-10-17', distance_of_run: 10, image_of_run: 'image.jpg')
run_seven = Run.create(shoe_id: 1, date_of_run: '2020-10-18', distance_of_run: 15, image_of_run: 'image.jpg')
run_eight = Run.create(shoe_id: 1, date_of_run: '2020-10-29', distance_of_run: 1.5, image_of_run: 'image.jpg')

run_nine = Run.create(shoe_id: 2, date_of_run: '2020-10-09', distance_of_run: 5, image_of_run: 'image.jpg')
run_ten = Run.create(shoe_id: 2, date_of_run: '2020-10-11', distance_of_run: 5, image_of_run: 'image.jpg')
run_eleven = Run.create(shoe_id: 2, date_of_run: '2020-10-15', distance_of_run: 10, image_of_run: 'image.jpg')
run_twelve = Run.create(shoe_id: 2, date_of_run: '2020-10-20', distance_of_run: 6, image_of_run: 'image.jpg')
run_thirteen = Run.create(shoe_id: 2, date_of_run: '2020-11-01', distance_of_run: 4, image_of_run: 'image.jpg')

run_fourteen = Run.create(shoe_id: 3, date_of_run: '2020-11-01', distance_of_run: 5, image_of_run: 'image.jpg')
run_fifteen = Run.create(shoe_id: 3, date_of_run: '2020-11-03', distance_of_run: 6, image_of_run: 'image.jpg')
run_sixteen = Run.create(shoe_id: 3, date_of_run: '2020-11-05', distance_of_run: 7, image_of_run: 'image.jpg')


