# spec/factories/hospitals.rb
FactoryBot.define do
    factory :hospital do
      name { Faker::Lorem.word }
      address { Faker::Lorem.word }
    end
  end
  