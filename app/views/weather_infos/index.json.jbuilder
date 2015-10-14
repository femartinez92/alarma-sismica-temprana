json.array!(@weather_infos) do |weather_info|
  json.extract! weather_info, :id, :temperature, :humidity, :generated_at
  json.url weather_info_url(weather_info, format: :json)
end
