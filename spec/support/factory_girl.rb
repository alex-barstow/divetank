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
    sequence(:max_depth) { |n| "70#{n + 1}" }
    rating 4

    user
  end

  factory :image do
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/support/image/GOPR5244.JPG')) }

    dive
  end
end
