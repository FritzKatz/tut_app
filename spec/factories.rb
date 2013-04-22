FactoryGirl.define do
  factory :user do
    name     "Robbie Tester"
    email    "testerw@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end