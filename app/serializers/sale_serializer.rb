class SaleSerializer < ActiveModel::Serializer
  belongs_to :company
  belongs_to :product
  
  attributes :id, :company_id, :product_id, :date, :value, :amount
end
