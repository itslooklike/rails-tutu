class AddRouteToTrain < ActiveRecord::Migration[5.2]
  def change
    add_reference :trains, :route, foreign_key: true
  end
end
