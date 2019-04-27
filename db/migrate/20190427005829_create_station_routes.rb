class CreateStationRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :railway_stations_routes do |t|
      t.references :railway_station, foreign_key: true
      t.references :route, foreign_key: true
    end
  end
end
