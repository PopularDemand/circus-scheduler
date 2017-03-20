FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    title      { Faker::Company.profession }
    studio     { Faker::Company.name }
    city       { Faker::Address.city }
    state      { Faker::Address.state }
    email      { Faker::Internet.unique.email }
    password "password"
  end
end
