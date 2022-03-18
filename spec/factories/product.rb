FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description {Faker::Lorem.sentence }
    size { 'M' }
    photo {Faker::Avatar.image }
    trait :inactive do
      is_active { false }
    end
  end
end