json.extract! profile, :id, :image, :name, :designation, :address, :email, :phoneno, :created_at, :updated_at
json.url profile_url(profile, format: :json)
