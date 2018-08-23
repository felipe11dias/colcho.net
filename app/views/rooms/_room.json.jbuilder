json.extract! room, :id, :title, :description, :location, :created_at, :updated_at
json.url room_url(room, format: :json)
