FactoryGirl.define do
    factory :product do
      name         "Cactus"
      price        { Faker::Commerce.price }
      description  { Faker::Lorem.sentence(10) }
      active        true
      photos        { Faker::Avatar.image }

      trait :active do
        active true
      end

      trait :inactive do
        active false
    end
  end
end
