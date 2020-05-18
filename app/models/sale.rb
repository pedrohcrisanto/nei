class Sale < ApplicationRecord
  belongs_to :company
  belongs_to :product
  after_create :set_value

  def set_value
    product = Product.find(self.product_id)
    value = self.amount * product.price
    self.update_column(:value, value)
  end

  def base_connect(sql)
    ActiveRecord::Base.connection.exec_query(sql)
  end

  # def find_by_id_sql(id)
  #   base_connect("SELECT * FROM sales WHERE (sales.id = id) LIMIT 1")
  # end

  # def index_sql
  #   base_connect("SELECT * from sales ORDER BY sales.id")
  # end
  
end
