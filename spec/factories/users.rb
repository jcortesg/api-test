FactoryGirl.define do
  factory :user do
    name "MyString"
    sequence(:email) { |n| "user#{n}@example.com"  }
    password "MyString"
    password_confirmation "MyString"
  end
end
