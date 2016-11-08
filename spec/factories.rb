FactoryGirl.define do
  factory :user do
    name     "Lance Vance"
    email    "lance@vance.com"
    password "foobar"
    password_confirmation "foobar"
  end
end