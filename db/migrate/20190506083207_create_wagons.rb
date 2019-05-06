class CreateWagons < ActiveRecord::Migration[5.2]
  def change
    create_table :wagons do |t|
      t.references :train, foreign_key: true
      t.references :wagon_type, foreign_key: true
      t.integer :seats_top
      t.integer :seats_bottom

      t.timestamps
    end
  end
end
