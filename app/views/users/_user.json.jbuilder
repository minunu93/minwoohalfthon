json.extract! user, :id, :name, :email, :pw, :food, :phon, :position, :food, :description, :created_at, :updated_at
json.url user_url(user, format: :json)