json.array!(@squirrels) do |squirrel|
  json.extract! squirrel, :id, :name, :breed, :age
  json.url squirrel_url(squirrel, format: :json)
end
