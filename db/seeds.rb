#create 10 users (faker names)
100.times do
   user = User.find_or_create_by(
      email: Faker::Internet.free_email
   )
  user.update(
     first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
     password: Faker::Internet.password,
     phone_number: Faker::PhoneNumber.cell_phone
  )
end

#create 10 neighborhoods (faker countries)
Neighborhood.create(name: "Ballard")
Neighborhood.create(name: "West Seattle")
Neighborhood.create(name: "Downtown Seattle")
Neighborhood.create(name: "Capitol Hill")
Neighborhood.create(name: "Queen Anne")
Neighborhood.create(name: "Lake City")
Neighborhood.create(name: "University District")
Neighborhood.create(name: "Wallingford")
Neighborhood.create(name: "Shoreline")


#create 10 venues (faker companies)
30.times do
   venue = Venue.find_or_create_by(
      name: Faker::TvShows::Friends.location
   )
   venue.update(
   neighborhood: Neighborhood.all.sample,
   capacity: rand(50..200)
   )
end 

#create 10 events (faker nebulas)
50.times do
   event = Event.find_or_create_by(
      name: Faker::App.name,
   )
   event.update(
      venue: Venue.all.sample,
      entry_cost: rand(0..50),
      start_time: Faker::Time.forward(1, :evening)
   )
end 

#create 3 checkins for each user
User.all.each do |user| 
   3.times do
      CheckIn.create(
         user: user,
         event: Event.all.sample,
         rating: rand(1..5),
         comment: Faker::Hipster.paragraph,
         wait_time: rand(0..60),
         active: 0
      )
   end
   user.check_ins.last.update(active: true)
end 
