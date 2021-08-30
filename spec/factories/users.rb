FactoryBot.define do
  
 sequence(:email) { |n| "user#{n}@test.com" }
 
  
  factory :user do
    email
    password { '12345678' }
    password_confirmation { '12345678' }
    
    
     trait :admin do
      after(:create) { |user| user.add_role(:admin) }
    end
  end
end