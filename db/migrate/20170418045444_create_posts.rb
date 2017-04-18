class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :item_name
      t.text :item_description
      t.string :supplier_name
      t.text :supplier_description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
