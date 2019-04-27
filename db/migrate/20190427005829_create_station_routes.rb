class CreateStationRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :railway_stations_routes do |t|
      t.references :railway_station
      t.references :route
    end
  end
end
