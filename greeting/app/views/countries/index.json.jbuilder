json.array!(@countries) do |country|
  json.extract! country, :id, :name, :time_of_day, :age
  json.url country_url(country, format: :json)
end
