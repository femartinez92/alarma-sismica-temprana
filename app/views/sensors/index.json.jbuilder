json.array!(@sensors) do |sensor|
  json.extract! sensor, :id, :latitude, :longitude
  json.url sensor_url(sensor, format: :json)
end
