class SaleSerializer < ActiveModel::Serializer
  belongs_to :company
  belongs_to :product
  
  attributes :id, :company_id, :product_id, :date, :value, :amount

  def attributes(*args)
    h = super(*args)
    h[:date] = object.date.to_time.strftime("%d/%m/%Y") unless object.date.blank?
    h
  end
end
