json.array!(@users) do |user|
  json.extract! user, :id, :name, :password_digest, :email, :bio, :birthday, :location, :alive
  json.url user_url(user, format: :json)
end
