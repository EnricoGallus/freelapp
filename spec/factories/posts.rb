FactoryBot.define do
  factory :post do
    title { 'title' }

    trait :with_thumbnail do
      thumbnail { FilesTestHelper.png }
    end
  end
end
