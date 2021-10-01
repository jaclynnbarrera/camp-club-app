# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Campsite.create(name: "Acadia National Park", state: "Maine", rv: "NO", bathroom: "YES", firewood: "YES", pets: "NO")
Campsite.create(name: "White Mountain National Forest", state: "New Hampshire", rv: "YES", bathroom: "YES", firewood: "YES", pets: "YES")
Campsite.create(name: "Minnewaska State Park", state: "New York", rv: "NO", bathroom: "YES", firewood: "YES", pets: "YES")
Campsite.create(name: "Yosemite National Park", state: "California", rv: "YES", bathroom: "NO", firewood: "NO", pets: "YES")

User.create(username: "hikebae", password: "password")
User.create(username: "campercaptain", password: "password")
User.create(username: "lovestocamp", password: "password")
User.create(username: "campergal", password: "password")
User.create(username: "livesoutdoors", password: "password")
User.create(username: "adventurer", password: "password")


# first campsite
Review.create(review: "Had a blast! The hiketrails were very scenic!", rating: 4, user_id: 1, campsite_id: 1 )
Review.create(review: "the campgrounds were kind of dirty and not well kept.", rating: 2, user_id: 3, campsite_id: 1 )
Review.create(review: "It was solid!", rating: 3, user_id: 6, campsite_id: 1 )

# second
Review.create(review: "meh it was okay", rating: 2, user_id: 2, campsite_id: 2)
Review.create(review: "The trails and lake around the campgrounds are amazing.", rating: 3, user_id: 5, campsite_id: 2)
Review.create(review: "First time here and we enjoyed it! Our dog had a lot of fun.", rating: 5, user_id: 6, campsite_id: 2)

#third
Review.create(review: "it was not great", rating: 1, user_id: 5, campsite_id: 3)
Review.create(review: "Solid campgrounds in Upstate New York. Will return!", rating: 4, user_id: 4, campsite_id: 3)
Review.create(review: "They have kayaks available to rent!! A lot of friendly families camping.", rating: 5, user_id: 3, campsite_id: 3)

#fourth
Review.create(review: "The best camping we've done!", rating: 4, user_id: 4, campsite_id: 4 )
Review.create(review: "So scenic!", rating: 4, user_id: 1, campsite_id: 4 )
Review.create(review: "Yosemite has been on our bucket list and it did not disappoint!", rating: 5, user_id: 2, campsite_id: 4 )

