class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
