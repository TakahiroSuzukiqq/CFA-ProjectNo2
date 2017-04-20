class AddDefaultToSuppliers < ActiveRecord::Migration[5.0]
  def up
    change_column :suppliers, :verified, :boolean, :default => false
  end
  def down
    change_column :suppliers, :verified, :boolean 
  end
end
