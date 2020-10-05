# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

restaurants = Category.create(name: "Restaurants")
bars = Category.create(name: "Bars")
retail = Category.create(name: "Retail")

Business.create(
  name: "Somewhere That's Green",
  description: "Plant store in the Old Mill",
  street_address: "661 SW Powerhouse Dr suite 1301",
  city: "Bend",
  state: "OR",
  zipcode: 97702,
  website: "https://www.somewheregreen.com/",
  category_id: retail.id
)
