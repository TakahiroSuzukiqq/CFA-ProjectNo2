json.extract! supplier, :id, :supplier_name, :supplier_phone_number, :company_number, :verified, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
