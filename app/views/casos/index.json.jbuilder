json.array!(@casos) do |caso|
  json.extract! caso, :id, :titulo, :problema, :ubicacion, :user_id
  json.url caso_url(caso, format: :json)
end
