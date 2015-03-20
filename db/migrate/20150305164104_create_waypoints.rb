class CreateWaypoints < ActiveRecord::Migration
  def change
    create_table :waypoints do |t|
      t.string :desc
      t.decimal :lat
      t.decimal :lng
      t.string :tralala

      t.timestamps null: false
    end
  end
end
