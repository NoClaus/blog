FactoryBot.define do
  factory :profile do
    first_name { "MyString" }
    last_name { "MyString" }
    biography { "MyText" }
    user { nil }
  end
end
