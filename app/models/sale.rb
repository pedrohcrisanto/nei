class Sale < ApplicationRecord
  belongs_to :company
  belongs_to :product
  after_create :set_value

  def set_value
    product = Product.find(self.product_id)
    value = self.amount * product.price
    self.update_column(:value, value)
  end

  # def base_connect(sql)
  #   ActiveRecord::Base.connection.exec_query(sql)
  # end

  # def find_by_id_sql(id)
  #   base_connect("SELECT * FROM sales WHERE (sales.id = id) LIMIT 1")
  # end

  # def index_sql
  #   base_connect("SELECT * from sales ORDER BY sales.id")
  # end

  def self.to_csv
    attributes = %w{id company_name date_sale product_name value amount}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |sale|
        csv << attributes.map{ |attr| sale.send(attr) }
      end
    end
  end

  def date_sale
    self.date.to_time.strftime("%d/%m/%Y") 
  end

  def product_name
    product_name = Product.find(self.product_id).name 
  end

  def company_name
    company_name = Company.find(self.product_id).name 
  end

end
