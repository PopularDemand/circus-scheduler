FactoryGirl.define do
  factory :event do
    name        { Faker::LordOfTheRings.location }
    description { Faker::HarryPotter.quote }
    user
  end
end
