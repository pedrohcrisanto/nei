class Sale < ApplicationRecord
  belongs_to :company
  belongs_to :product

  def base_connect(sql)
    ActiveRecord::Base.connection.exec_query(sql)
  end

  def find_by_id_sql(id)
    base_connect("SELECT * FROM sales WHERE (sales.id = id) LIMIT 1")
  end

  def index_sql
    base_connect("SELECT * from sales ORDER BY sales.id")
  end
  
end
