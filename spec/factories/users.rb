FactoryBot.define do
  factory :user do
    full_name     {"hoge hoge"}
    email         { Faker::Internet.free_email }
    password      { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation  { password }
    dancer_name   {"bboy_god"}
  end
end