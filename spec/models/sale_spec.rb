require 'rails_helper'

describe Sale do
  Product.create(name: "Produto", price: 123.2)
  Company.create(name: "Empresa", cnpj: "123123213")
  Sale.create!(company_id: 1, product_id: 1, date: Date.today, amount: 123)
  describe "#index_sql" do
    context "success consult result" do
      subject { described_class.new }
      it "execute sql consult" do
        expect(subject.index_sql.to_json).to eql Sale.all.to_json
      end
    end
  end

  describe "#find_by_id_sql" do
    context "success consult result" do
      subject { described_class.new }
      it "execute sql consult" do
        expect(subject.find_by_id_sql(1).to_json).to match Sale.find(1).to_json
      end
    end
  end

  describe "#set_value" do
    context "success set_value" do
      subject { described_class.find(1) }
      it "update value" do
        expect(subject.value).to eql (subject.amount * Product.find(subject.product_id).price)
      end
    end
  end
end
