json.extract! user, :id, :email, :password_digest, :username, :major, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
