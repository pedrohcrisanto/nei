class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.references :company, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.date :date
      t.float :value
      t.integer :amount

      t.timestamps
    end
  end
end
