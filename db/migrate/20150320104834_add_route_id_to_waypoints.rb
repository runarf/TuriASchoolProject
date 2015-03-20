class AddRouteIdToWaypoints < ActiveRecord::Migration
  def change
    add_reference :waypoints, :route, index: true
  end
end
