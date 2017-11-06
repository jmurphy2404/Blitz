# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
	{fullname: "John Murphy", address: "240 Fourth Avenue Garwood, NJ", phone_num: "9083377896", user_type: 1, email: "murf2073@gmail.com", password: "password"},
	{fullname: "Lisa Mae", address: "90 John Street New York, NY", phone_num: "9081234567", user_type: 1, email: "lisamae@gmail.com", password: "password"},
	{fullname: "Cam Crews", address: "95 Broadway New York, NY", phone_num: "2125556666", user_type: 2, email: "cam@gmail.com", password: "password"}
])

Bike.create([
	{make: "Specialized", model: "Hybrid", color: "blue", image: open("https://ca.slack-edge.com/T03JJLPSP-U6ZECGYG7-ae94039c103a-1024"), user_id: 1},
	{make: "Trek", model: "Mountain", color: "green", image: open("https://ca.slack-edge.com/T03JJLPSP-U6W6NQZNU-9f74e019eb18-1024"), user_id: 2},
	{make: "Trek", model: "Road Bike", color: "red", image: open("https://ca.slack-edge.com/T03JJLPSP-U6W6NQZNU-9f74e019eb18-1024"), user_id: 2}
])

Job.create([
	{origin: "Central Park New York, NY", destination: "5 Times Square New York, NY", origin_lat: 40.785091, origin_lng: -73.968285, dest_lat: 40.7557, dest_lng: -73.9874, date: "11/27/17", time: "13:05", bike_id: 2, user_id: 2}
])