# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Campsite.create(name: "Camp Flog Gnaw", address: "Dodger Stadium, Los Angeles, CA", bio: "Camp Flog Gnaw Carnival, formerly known as the OFWGKTA Carnival or Odd Future carnival, is an annual American music festival and carnival curated by Tyler, the Creator and has been held annually since its inception in the fall of 2012.")
Campsite.create(name: "Yosemite National Park", address: "California", bio: "Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.")

User.create(username: "hikebae", password: "password")
User.create(username: "campercaptain", password: "password")

Review.create(review: "Had a blast!", rating: 4, user_id: 2, campsite_id: 2 )
Review.create(review: "meh", rating: 2, user_id: 2, campsite_id: 1)
Review.create(review: "The trails and lake around the campgrounds are amazing.", rating: 3, user_id: 1, campsite_id: 1)

