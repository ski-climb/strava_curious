FactoryGirl.define do
  factory :user do
    uid        { Faker::Number.hexadecimal(30) }
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    username   { first_name + "-" + last_name + "-" + Faker::Number.hexadecimal(4) }
    email      { Faker::StarWars.character.gsub(" ",".") + "@" + Faker::StarWars.planet + ".com" }
    token      { Faker::Number.hexadecimal(30) }
  end
end
