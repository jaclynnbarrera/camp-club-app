# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Campsite.create(name: "Camp Flog Gnaw", state: "CA", rv: "YES", bathroom: "YES", firewood: "NO", pets: "YES")
Campsite.create(name: "Acadia National Park", state: "ME", rv: "NO", bathroom: "YES", firewood: "YES", pets: "NO")
Campsite.create(name: "White Mountain National Forest", state: "NH", rv: "YES", bathroom: "YES", firewood: "YES", pets: "YES")
Campsite.create(name: "Minnewaska State Park", state: "NY", rv: "NO", bathroom: "YES", firewood: "YES", pets: "YES")

User.create(username: "hikebae", password: "password")
User.create(username: "campercaptain", password: "password")

Review.create(review: "Had a blast!", rating: 4, user_id: 2, campsite_id: 1 )
Review.create(review: "meh", rating: 2, user_id: 2, campsite_id: 2)
Review.create(review: "The trails and lake around the campgrounds are amazing.", rating: 3, user_id: 1, campsite_id: 3)
Review.create(review: "The trails and lake around the campgrounds are amazing.", rating: 3, user_id: 1, campsite_id: 4)

