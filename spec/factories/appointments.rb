# spec/factories/appointments.rb
FactoryBot.define do
    factory :todo do
        checkup { Faker::Lorem.word }
        scheduledate { Faker::Date.in_date_period }
        doctor { Faker::Number.number(10) }
    end
end