
require 'faker'

Message.destroy_all
Conversation.destroy_all
Attendance.destroy_all
Event.destroy_all
Kid.destroy_all
Profile.destroy_all
User.destroy_all


### 1
user = User.create!(
  email:                 "admin@admin.com",
  password:              "admin@admin.com",
  password_confirmation: "admin@admin.com",
  admin: true
)

profile = Profile.create!(
  user: user,
  first_name:                 "Oliver",
  last_name:                  "Lehner",
  street_name:                "Liechensteinstrasse 110",
  date_of_birth: "1988-03-05",
  gender: "male",
  zipcode: "1090",
  city: "Vienna",
  country: "Austria",
)

### 2
user = User.create!(
  email:                 "oliver@parentsconnect.com",
  password:              "oliver@parentsconnect.com",
  password_confirmation: "oliver@parentsconnect.com",
  admin: true
)

profile = Profile.create!(
  user: user,
  first_name:                 "Oliver",
  last_name:                  "Lehner",
  date_of_birth: "1988-03-05",
  bio: "Hey, hoping to meet fellow parents in the area!",
  gender: "male",
  street_name:                "Wibautstraat 110",
  zipcode: "1076",
  city: "Amsterdam",
  country: "Netherlands",
)

kid = Kid.create!(
  gender: "male",
  date_of_birth: "2015-12-12",
  profile: profile
  )

kid = Kid.create!(
  gender: "female",
  date_of_birth: "2015-12-12",
  profile: profile
  )

event = Event.create!(
  profile: profile,
  description: "Stroll through Vondelpark",
  street_name: "Vondelpark",
  start_date: "2017-04-18",
  start_time: "15:00:00",
  zipcode: "1076",
  city: "Amsterdam",
  country: "Netherlands",
  )

### 3
user = User.create!(
  email:                 "carolyn@parentsconnect.com",
  password:              "carolyn@parentsconnect.com",
  password_confirmation: "carolyn@parentsconnect.com",
  admin: true
)

profile = Profile.create!(
  user: user,
  first_name:                 "Carolyn",
  last_name:                  "Johnson Orosz",
  date_of_birth: "1986-11-11",
  gender: "female",
  street_name:                "Nieuwe Doelenstraat 5",
  zipcode: "1012",
  city: "Amsterdam",
  country: "Netherlands",
  bio: "Hi, I am Carolyn and I just moved over to Amsterdam. Meeting forward to meeting fellow parents int the area!",
)

kid = Kid.create!(
  gender: "female",
  date_of_birth: "2015-12-25",
  profile: profile
  )

event = Event.create!(
  profile: profile,
  description: "Playdate with my toddler at the playground",
  street_name: "Van Tuyll van Serooskerkenweg 140",
  start_date: "2017-04-15",
  start_time: "14:00:00",
  zipcode: "1076",
  city: "Amsterdam",
  country: "Netherlands",
  )

event = Event.create!(
  profile: profile,
  description: "Breakfast/picknic with my toddler at the playground :)",
  street_name: "Oude Turfmarkt 129",
  start_date: "2017-04-20",
  start_time: "11:30:00",
  zipcode: "1012",
  city: "Amsterdam",
  country: "Netherlands",
  )

### 4
user = User.create!(
  email:                 "tijmen@parentsconnect.com",
  password:              "tijmen@parentsconnect.com",
  password_confirmation: "tijmen@parentsconnect.com",
  admin: true
)

profile = Profile.create!(
  user: user,
  first_name:                 "Tijmen",
  last_name:                  "de Graaff",
  date_of_birth: "1991-01-02",
  gender: "prefer not to say",
  bio: "Nice to meet all of you here on parentsconnect!",
  street_name:                "Rooseveltlaan 110",
  zipcode: "1076",
  city: "Amsterdam",
  country: "Netherlands",
)

kid = Kid.create!(
  gender: "female",
  date_of_birth: "2012-01-25",
  profile: profile
  )

event = Event.create!(
  profile: profile,
  description: "Walk around Van der Pekbuurt",
  street_name: "Overhoeksplein 2",
  start_date: "2017-04-19",
  start_time: "10:00:00",
  zipcode: "1076",
  city: "Amsterdam",
  country: "Netherlands",
  )

event = Event.create!(
  profile: profile,
  description: "Playing football with my daughter - join us!",
  street_name: "Flevopark 15",
  start_date: "2017-04-15",
  start_time: "14:00:00",
  zipcode: "1095",
  city: "Amsterdam",
  country: "Netherlands",
  )

### 5
user = User.create!(
  email:                 "user5@parentsconnect.com",
  password:              "user5@parentsconnect.com",
  password_confirmation: "user5@parentsconnect.com",
)

profile = Profile.create!(
  user: user,
  first_name:                 "Ramona",
  last_name:                  Faker::Name.last_name,
  date_of_birth: "1984-01-02",
  pregnant: "true",
  due_date: "2017-05-08",
  gender: "female",
  bio: "Just moved over - great to meet all of you!",
  street_name:                "Amstel 16",
  zipcode: "1017",
  city: "Amsterdam",
  country: "Netherlands",
)

event = Event.create!(
  profile: profile,
  description: "Eating fries with fellow pregnant mums!",
  street_name: "Overhoeksplein 10",
  start_date: "2017-05-01",
  start_time: "14:00:00",
  duration: 120,
  zipcode: "1076",
  city: "Amsterdam",
  country: "Netherlands",
  )


### 6
user = User.create!(
  email:                 "user6@parentsconnect.com",
  password:              "user6@parentsconnect.com",
  password_confirmation: "user6@parentsconnect.com",
)

profile = Profile.create!(
  user: user,
  first_name:                 "Sven",
  last_name:                  Faker::Name.last_name,
  date_of_birth: "1990-02-11",
  gender: "male",
  street_name:                "Rokin 78",
  zipcode: "1012",
  city: "Amsterdam",
  country: "Netherlands",
  bio: "Nice to meet all of you and your families!",
)

kid = Kid.create!(
  gender: "female",
  date_of_birth: "2017-04-02",
  profile: profile
  )

event = Event.create!(
  profile: profile,
  description: "Going to the museum with my newborn",
  start_date: "2017-04-17",
  start_time: "13:30:00",
  duration: 120,
  street_name: "Kalverstraat 92",
  zipcode: "1012",
  city: "Amsterdam",
  country: "Netherlands",
  )

event = Event.create!(
  profile: profile,
  description: "Walking around Herengracht",
  start_date: "2017-04-20",
  start_time: "10:00:00",
  duration: 90,
  street_name: "Herengracht 573",
  zipcode: "1017",
  city: "Amsterdam",
  country: "Netherlands",
  )

event = Event.create!(
  profile: profile,
  description: "Grabbing coffee with other young parents",
  start_date: "2017-04-20",
  start_time: "17:45:00",
  duration: 60,
  street_name: "Singel 480",
  zipcode: "1017",
  city: "Amsterdam",
  country: "Netherlands",
  )

### 7
user = User.create!(
  email:                 "user7@parentsconnect.com",
  password:              "user7@parentsconnect.com",
  password_confirmation: "user7@parentsconnect.com",
)

profile = Profile.create!(
  user: user,
  first_name:                 "Kristin",
  last_name:                  Faker::Name.last_name,
  date_of_birth: "1980-02-11",
  gender: "female",
  pregnant: true,
  due_date: "2017-06-01",
  street_name: "Rokin 12",
  zipcode: "1012",
  city: "Amsterdam",
  country: "Netherlands",
  bio: "Soon to be mother wants to meet likeminded parents! :)",
)

### 8
user = User.create!(
  email:                 "user8@parentsconnect.com",
  password:              "user8@parentsconnect.com",
  password_confirmation: "user8@parentsconnect.com",
)

profile = Profile.create!(
  user: user,
  first_name:                 "Diosa",
  last_name:                  Faker::Name.last_name,
  date_of_birth: "1985-12-24",
  gender: "female",
  pregnant: true,
  bio: "Nice to meet all of you here on parentsconnect!",
  street_name:                "Reguliersdwarsstraat 42",
  zipcode: "1017",
  city: "Amsterdam",
  country: "Netherlands",
)

kid = Kid.create!(
  gender: "female",
  date_of_birth: "2012-01-25",
  profile: profile
  )

kid = Kid.create!(
  gender: "female",
  date_of_birth: "2014-03-25",
  profile: profile
  )

event = Event.create!(
  profile: profile,
  description: "Visiting Oude Kerk",
  street_name: "Oudekerksplein 23",
  start_date: "2017-04-19",
  start_time: "10:00:00",
  zipcode: "1076",
  city: "Amsterdam",
  country: "Netherlands",
  )

event = Event.create!(
  profile: profile,
  description: "Picknick with my kids",
  street_name: "Flevopark 13",
  start_date: "2017-04-16",
  start_time: "14:30:00",
  duration: 60,
  zipcode: "1095",
  city: "Amsterdam",
  country: "Netherlands",
  )

### 9
user = User.create!(
  email:                 "user9@parentsconnect.com",
  password:              "user9@parentsconnect.com",
  password_confirmation: "user9@parentsconnect.com",
)

profile = Profile.create!(
  user: user,
  first_name:                 "Heike",
  last_name:                  Faker::Name.last_name,
  date_of_birth: "1994-12-04",
  gender: "female",
  pregnant: true,
  bio: "Wow, totally blown away by the community. I'm pregnant and want to chat/meet with all of you to learn more about what's to come.",
  street_name:                "Reguliersdwarsstraat 20",
  zipcode: "1017",
  city: "Amsterdam",
  country: "Netherlands",
)

### 8
user = User.create!(
  email:                 "user10@parentsconnect.com",
  password:              "user10@parentsconnect.com",
  password_confirmation: "user10@parentsconnect.com",
)

profile = Profile.create!(
  user: user,
  first_name:                 "Feiko",
  last_name:                  Faker::Name.last_name,
  date_of_birth: "1985-12-24",
  gender: "male",
  bio: "Hey, I'm Feiko, I love to code and be with my family!",
  street_name:                "Damrak 80",
  zipcode: "1017",
  city: "Amsterdam",
  country: "Netherlands",
)

kid = Kid.create!(
  gender: "female",
  date_of_birth: "2013-01-25",
  profile: profile
  )

kid = Kid.create!(
  gender: "female",
  date_of_birth: "2011-10-01",
  profile: profile
  )

event = Event.create!(
  profile: profile,
  description: "Playdate with my kids on the playground nearby, then maybe a coffee! :)",
  start_date: "2017-04-20",
  start_time: "10:30:00",
  duration: 270,
  street_name: "Herengracht 133",
  zipcode: "1015",
  city: "Amsterdam",
  country: "Netherlands",
  )

event = Event.create!(
  profile: profile,
  description: "Picknick! Please bring you on food/drinks :)",
  start_date: "2017-05-16",
  start_time: "14:45:00",
  duration: 120,
  street_name: "Spuistraat 172",
  zipcode: "1012",
  city: "Amsterdam",
  country: "Netherlands",
  )

event = Event.create!(
  profile: profile,
  description: "Anybody in on a boottrip? Will reserve one for 10 people",
  start_date: "2017-05-16",
  start_time: "11:45:00",
  duration: 180,
  street_name: "Spuistraat 122",
  zipcode: "1012",
  city: "Amsterdam",
  country: "Netherlands",
  )

### fake users to fill events/attendances
#users
15.times do
  user = User.create!(
    email:                 Faker::Internet.email,
    password:              "secret",
    password_confirmation: "secret",
  )

#profile
  profile = Profile.create!(
    user: user,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    gender: "prefer not to say",
    street_name: Faker::Address.street_address,
    zipcode: Faker::Address.postcode.to_i,
    city: Faker::Address.city,
    country: Faker::Address.country,
    bio: "Nice to meet all of you! Parents Connect is a-w-e-s-o-m-e!"
  )
end

### fill events with attendances
30.times do
  if Attendance.create(
    event_id: rand(1..Event.all.size), 
    profile_id: rand(2..Profile.all.size))
  end
end
# 25.times do
#   Attendance.create!(
#     event_id: rand(1..Event.all.size),
#     profile_id: rand(2..Profile.all.size),
#     )
# end




