FactoryBot.define do
  factory :sale do
    company { Company.all.sample }
    product { Product.all.sample }
    date { Faker::Date.in_date_period(month: 2) }
    amount { Faker::Number.number(digits: 2) }
  end
end
