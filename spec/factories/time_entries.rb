FactoryBot.define do
  factory :time_entry do
    name { "MyString" }
    project { nil }
    user { nil }
    from { "2021-12-06 18:19:42" }
    to { "2021-12-06 18:19:42" }
    date { "2021-12-06" }
  end
end
