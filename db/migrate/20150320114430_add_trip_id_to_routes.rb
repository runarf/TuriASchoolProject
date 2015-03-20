class AddTripIdToRoutes < ActiveRecord::Migration
  def change
    add_reference :routes, :trip, index: true
  end
end
