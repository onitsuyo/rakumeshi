FactoryBot.define do
  factory :user do
    nickname { Faker::Name.initials(number: 2) }
    email { Faker::Internet.free_mail}
    password { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
  end
end