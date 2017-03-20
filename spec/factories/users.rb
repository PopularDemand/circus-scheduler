FactoryGirl.define do
  factory :user do
    first_name "First"
    last_name "Last"
    title "Title"
    studio "Studio"
    city "City"
    state "State"
    email "user@user.com"
    password "password"
  end
end
