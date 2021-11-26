json.extract! user_vegetable, :id, :user_id, :vegetable_id, :created_at, :updated_at
json.url user_vegetable_url(user_vegetable, format: :json)
