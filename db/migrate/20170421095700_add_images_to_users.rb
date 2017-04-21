class AddImagesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :images, :string
  end
end
