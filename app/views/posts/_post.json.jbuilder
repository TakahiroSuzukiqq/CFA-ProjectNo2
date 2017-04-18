json.extract! post, :id, :item_name, :item_description, :supplier_name, :supplier_description, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
