class RoutesController < ApplicationController

  before_action :authenticate_user!

  layout 'trip'

  def index
    @trip = Trip.find(params[:trip_id])
  end

  def show
    @route = Route.find(params[:id])
  end

  def new
    @trip = Trip.find(params[:trip_id])

  end

  def create
    @trip = Trip.find(params[:trip_id])
    @route = @trip.routes.build(route_params)
    #@route = Route.new(route_params)



    # redirect_to trip_route_path
  end



  private
  def route_params
    byebug
    params.require(:route).permit(:title, :desc, waypoints_attributes: [:title, :lat, :lng, :type])
  end

end


