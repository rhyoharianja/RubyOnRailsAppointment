# spec/factories/items.rb
FactoryBot.define do
    factory :item do
        fullname { Faker::Movies::StarWars.character}
        specialist { Faker::Lorem.word }
        hospital_id nil
    end
end