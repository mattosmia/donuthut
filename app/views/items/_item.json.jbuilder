json.extract! item, :id, :title, :description, :price, :image_url, :category, :tags, :created_at, :updated_at
json.url item_url(item, format: :json)
