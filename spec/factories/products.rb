FactoryGirl.define do
  factory :product do
    name         "Cactus"
    price        { Faker::Commerce.price }
    description  { Faker::Lorem.sentence(10) }
    active        true
    photos { build_list :photo, 3 }

    trait :inactive do
      active false
    end

  end

  factory :photo do
    image        { Faker::Avatar.image }
  end
end
