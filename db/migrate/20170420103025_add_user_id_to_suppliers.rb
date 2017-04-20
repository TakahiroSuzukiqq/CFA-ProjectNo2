class AddUserIdToSuppliers < ActiveRecord::Migration[5.0]
  def change
    add_reference :suppliers, :user, foreign_key: true
  end
end
