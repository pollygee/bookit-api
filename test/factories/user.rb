FactoryGirl.define do
  factory :user do
    sequence(:email){|n| "bob#{n}@example.com"}
    password "password"
  end
end