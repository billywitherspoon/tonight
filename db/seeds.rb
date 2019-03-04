

#seed locations


10.times do
  User.create(
     first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name
  )
end

10.times do
   Location.create(
      name: Faker::Address.country
   )
end 

10.times do
   Venue.create(
      name: Faker::Company.name,
      location: Location.all.[rand(1..10)]
   )
end 

10.times do
   Event.create(
      name: Faker::Space.nebula,
      venue: Venue.all.[rand(1..10)]
   )
end 

User.each do |user| 
   CheckIn.create(
      user: user,
      event: Event.all.[rand(1..10)],
      stars: rand(1..5)
   )
end 


# #seed locations
# magnolia = location.create(name: "Magnolia")
# cap_hill = location.create(name: "Capitol Hill")
# fremont = location.create(name: "Fremont")
# ballard = location.create(name: "Ballard")
# bell_town = location.create(name: "Belltown")





# bar = 
