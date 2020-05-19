require 'rails_helper'

describe Product do
  it "attr type" do
    product = FactoryBot.create(:product)
    expect(product.id).to be_a(Integer)
    expect(product.name).to be_a(String)
    expect(product.price).to be_a(Float)
  end
end
