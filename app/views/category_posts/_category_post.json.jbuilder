json.extract! category_post, :id, :category_id, :post_id, :created_at, :updated_at
json.url category_post_url(category_post, format: :json)
