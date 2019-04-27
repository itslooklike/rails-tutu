class CreateTrains < ActiveRecord::Migration[5.2]
  def change
    create_table :trains do |t|
      t.string :number
      t.references :railway_station, foreign_key: true

      t.timestamps
    end
  end
end
