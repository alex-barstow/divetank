require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:user_name) { |n| "user_name#{n + 1}" }
    sequence(:email) { |n| "email#{n + 1}@example.com" }
    first_name 'firstname'
    last_name 'lastname'
    password 'password'
    password_confirmation 'password'
  end

  factory :dive do
    title 'Chester Polling Drysuit Dive'
    site_name 'The Wreck of the Chester Polling'
    date 'September 12, 2016'

    user
  end
end
