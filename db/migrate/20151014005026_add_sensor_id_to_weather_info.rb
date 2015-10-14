class AddSensorIdToWeatherInfo < ActiveRecord::Migration
  def change
    add_column :weather_infos, :sensor_id, :integer
  end
end
