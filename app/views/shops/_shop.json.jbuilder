json.extract! shop, :id, :name, :address, :address_cn, :description, :description_cn, :image_url, :open_time, :close_time, :phone, :category, :created_at, :updated_at
json.url shop_url(shop, format: :json)
