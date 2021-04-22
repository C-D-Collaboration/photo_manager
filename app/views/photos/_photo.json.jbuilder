json.extract! photo, :id, :description, :genre, :created_at, :updated_at
json.url photo_url(photo, format: :json)
