FactoryBot.define do
  factory :profile do
    first_name { "John" }
    last_name { "Smith" }
    biography { "MyText" }
    user { nil }
  end
end
