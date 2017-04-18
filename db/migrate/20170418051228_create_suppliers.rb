class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :supplier_name
      t.string :supplier_phone_number
      t.string :company_number
      t.boolean :verified

      t.timestamps
    end
  end
end
