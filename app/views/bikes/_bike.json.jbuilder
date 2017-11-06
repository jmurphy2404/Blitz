json.extract! bike, :id, :make, :model, :color, :image, :user_id, :created_at, :updated_at
json.url bike_url(bike, format: :json)
