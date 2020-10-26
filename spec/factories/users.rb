FactoryBot.define do
  factory :user do
    nickname { Faker::Name.initials(number: 2) }
    email { Faker::Internet.free_email }
    password  = '1a2b' + Faker::Internet.password(min_length: 6)
    password { password }
    password_confirmation { password }
    family_name { Gimei.last.kanji }
    first_name { Gimei.first.kanji }
    family_name_kana { Gimei.last.katakana }
    first_name_kana { Gimei.first.katakana }
    birthday { Faker::Date.birthday }
  end
end
