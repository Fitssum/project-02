class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :station_name
      t.string :location
      t.string :photo_url

      t.timestamps
    end
  end
end
