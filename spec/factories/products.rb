FactoryBot.define do
  factory :product do
    name { Faker::Food.fruits }
    price { Faker::Number.decimal(l_digits: 2) }
  end
end
