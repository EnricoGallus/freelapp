FactoryBot.define do
  factory :project do
    name { "MyString" }
    hourly_rate { "9.99" }
    organization { nil }
    user { nil }
  end
end
