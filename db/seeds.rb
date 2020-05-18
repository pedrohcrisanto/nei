20.times do |i|
    Product.create!(
        name: Faker::Food.fruits, 
        price: Faker::Number.decimal(l_digits: 2)
    )
end

20.times do |i|
    Company.create!(
        name: Faker::Company.name, 
        cnpj: Faker::Company.brazilian_company_number(formatted: true)
    )
end

20.times do |i|
    Sale.create!(
        company: Company.all.sample, 
        product: Product.all.sample, 
        date: Faker::Date.in_date_period(month: 2),
        amount: Faker::Number.number(digits: 2))
end

    