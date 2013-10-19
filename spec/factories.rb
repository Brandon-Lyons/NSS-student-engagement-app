FactoryGirl.define do
  sequence(:email) { |n| "user#{n}-#{rand(100000000)}@gmail.com" }
  factory :student do
    name "John Doe"
    cohort 2
    email
    password "password"
  end

  factory :mentor do
    name "Mr. Experienced"
    email
    password "password"
  end

  factory :instructor do
    name "John Wark"
    email "john@email.com"
    password "password"
  end

  factory :event do
    name "HackNashville"
    date "10/18/2013"
  end

  factory :interaction do
    date "11/25/2013"
    location "Nashville"
  end


end