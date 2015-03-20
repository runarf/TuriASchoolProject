class RoutesController < ApplicationController

  before_action :authenticate_user!

  layout 'trip'

  def index
    @trip = Trip.find(params[:trip_id])
  end

  def show
    @trip = Trip.find(params[:trip_id])
    @route = Route.find(params[:id])
  end

  def new
    @trip = Trip.find(params[:trip_id])
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @route = @trip.routes.build(route_params)
    if @route.save
      redirect_to [@trip, @route]
    else
      render 'new'
    end
  end

  private
  def route_params
    params.require(:route).permit(:title, :desc, waypoints_attributes: [:desc, :lat, :lng, :tralala])
  end

end


