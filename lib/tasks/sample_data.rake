namespace :db do
  desc "Fill database with simple data"
  task populate: :environment do
    User.create!(name:                  "Example User", 
    	         email:                 "example@tkmoto.com",
    	         password:              "foobar",
    	         password_confirmation: "foobar",
               admin: true)
    25.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@tkmoto.com"
      password = "password"
      User.create!(name:                  name,
      	           email:                 email,
      	           password:              password,
      	           password_confirmation: password)
    end
  end
end