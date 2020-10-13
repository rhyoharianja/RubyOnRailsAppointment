# spec/factories/users.rb
FactoryBot.define do
    factory :user do
        name { Faker::Name.name }
        email {'harianja@suryo.com'}
        password { 'QWERTY!@#$r' }
    end
end