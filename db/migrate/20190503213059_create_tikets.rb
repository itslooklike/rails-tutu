class CreateTikets < ActiveRecord::Migration[5.2]
  def change
    create_table :tikets do |t|
      t.references :train, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
