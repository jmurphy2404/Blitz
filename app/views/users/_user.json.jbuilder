json.extract! user, :id, :fullname, :address, :phone_num, :user_type, :created_at, :updated_at
json.url user_url(user, format: :json)
