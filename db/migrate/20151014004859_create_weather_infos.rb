class CreateWeatherInfos < ActiveRecord::Migration
  def change
    create_table :weather_infos do |t|
      t.decimal :temperature
      t.decimal :humidity
      t.decimal :generated_at

      t.timestamps null: false
    end
  end
end
