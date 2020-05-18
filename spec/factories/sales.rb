FactoryBot.define do
  factory :sale do
    company { nil }
    product { nil }
    date { "2020-05-17" }
    value { 1.5 }
    amount { 1 }
  end
end
