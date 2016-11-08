FactoryGirl.define do
  factory :user do
    name     "Tony Montana"
    email    "tony@montana.com"
    password "foobar"
    password_confirmation "foobar"
  end
end