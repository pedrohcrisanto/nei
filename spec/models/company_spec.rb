require 'rails_helper'

describe Company do
  it "attr type" do
    company = FactoryBot.create(:company)
    expect(company.id).to be_a(Integer)
    expect(company.name).to be_a(String)
    expect(company.cnpj).to be_a(String)
  end
end
