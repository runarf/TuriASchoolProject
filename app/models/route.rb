class Route < ActiveRecord::Base
  belongs_to :trip

  # "accepts nested attributes for" lets the model create another model,
  # see create method in routes controller
  has_many :waypoints#, :dependent => :delete_all
  accepts_nested_attributes_for :waypoints
end
