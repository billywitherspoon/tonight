#create 10 users (faker names)
10.times do
  User.create(
     first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
     email: Faker::Internet.free_email,
     password: Faker::Internet.password,
     
  )
end

#create 10 locations (faker countries)
10.times do
   Location.create(
      name: Faker::Address.country
   )
end 

#create 10 venues (faker companies)
10.times do
   Venue.create(
      name: Faker::Company.name,
      location: Location.all.sample
   )
end 

#create 10 events (faker nebulas)
10.times do
   Event.create(
      name: Faker::Space.nebula,
      venue: Venue.all.sample
   )
end 

#create 3 checkins for each user
User.all.each do |user| 
   CheckIn.create(
      user: user,
      event: Event.all.sample,
      stars: rand(1..5)
   )
   CheckIn.create(
      user: user,
      event: Event.all.sample,
      stars: rand(1..5)
   )
   CheckIn.create(
      user: user,
      event: Event.all.sample,
      stars: rand(1..5)
   )
end 
