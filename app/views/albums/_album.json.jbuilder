json.extract! album, :id, :user_id, :name, :public, :created_at, :updated_at
json.url album_url(album, format: :json)
