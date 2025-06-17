json.extract! reservation, :id, :name, :email, :reserved_at, :note, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
