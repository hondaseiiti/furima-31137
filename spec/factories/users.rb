FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    family_name            { Faker::Name.first_name }
    first_name             { Faker::Name.last_name }
    family_name_kana       { 'ホンダ' }
    first_name_kana        { 'セイイチ' }
    birth_day              { Faker::Date.birthday }
  end
end
