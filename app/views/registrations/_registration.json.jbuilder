json.extract! registration, :id, :email, :created_at, :updated_at
json.url registration_url(registration, format: :json)
