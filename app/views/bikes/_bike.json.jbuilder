json.extract! bike, :id, :name, :user_id, :year, :color, :created_at, :updated_at
json.url bike_url(bike, format: :json)