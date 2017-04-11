
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
  street_name:                "Eostraat 420",
  zipcode: "1076",
  pregnant: "true",
  due_date: "2017-05-05",
  bio: "Hi, I am Carolyn and I just moved over to Amsterdam. Meeting forward to meeting fellow parents int the area!",
  city: "Amsterdam",
  country: "Netherlands",
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
  description: "Breakfast/picknick with my toddler at the playground - (BYO!) :)",
  street_name: "Van Tuyll van Serooskerkenweg 140",
  start_date: "2017-04-20",
  start_time: "10:00:00",
  zipcode: "1076",
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
  street_name: "Overhoeksplein 2,",
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








### fake users
#USERS
15.times do
  user = User.create!(
    email:                 Faker::Internet.email,
    password:              "secret",
    password_confirmation: "secret",
  )

#PROFILE
  profile = Profile.create!(
    user: user,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    street_name: Faker::Address.street_address,
    zipcode: Faker::Address.postcode.to_i,
    city: Faker::Address.city,
    country: Faker::Address.country,
  )
end