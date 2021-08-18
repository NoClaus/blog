FactoryBot.define do
  factory :post do
    title { "MyString" }
    description { "MyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyTextMyText" }
    state { :published }
    user
  end
end
