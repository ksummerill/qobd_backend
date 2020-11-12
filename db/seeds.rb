# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Category.delete_all
Business.delete_all

restaurants = Category.create(name: "Restaurants")
bars = Category.create(name: "Bars")
retail = Category.create(name: "Retail")
hair_salon = Category.create(name: "Hair Salon")
barber_shop = Category.create(name: "Barber Shop")
outdoor = Category.create(name: "Outdoor")
clothing = Category.create(name: "Clothing")
organization = Category.create(name: "Organization")
social = Category.create(name: "Social Group")

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

Business.create(
  name: "Out Central Oregon",
  description: "OUT Central Oregon develops and supports events and provides information to encourage community involvement and build well-being for the LGBTQ+ community.",
  street_address: "P.O. Box 1204",
  city: "Bend",
  state: "OR",
  zipcode: 97709,
  website: "https://outcentraloregon.com/",
  category_id: organization.id
)

Business.create(
  name: "Spider City Brewing",
  description: "Craft Brewery, specializing in IPAs",
  street_address: "1177 SE 9th St.",
  city: "Bend",
  state: "OR",
  zipcode: 97702,
  website: "https://spidercitybrewing.com/",
  category_id: bars.id
)

Business.create(
  name: "Restaurant 1",
  description: "Restaurant 1",
  street_address: "1177 SE 9th St.",
  city: "Bend",
  state: "OR",
  zipcode: 97702,
  website: "restaurant1.com/",
  category_id: restaurants.id
)

Business.create(
  name: "Restaurant 2",
  description: "Restaurant 2",
  street_address: "1177 SE 9th St.",
  city: "Bend",
  state: "OR",
  zipcode: 97702,
  website: "restaurant2.com/",
  category_id: restaurants.id
)
