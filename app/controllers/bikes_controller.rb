class BikesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :edit, :destroy, :new]

  def index
    @station = Station.find(params[:station_id])
    @bikes = @station.bikes
  end

  def new
   @station = Station.find(params[:station_id])
   @bike = @station.bikes.new
  end

  def create
    @station = Station.find(params[:station_id])
    @bike = @station.bikes.create(bike_params)
    redirect_to station_bikes_path(@station, @bike)
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def edit
    @station = Station.find(params[:station_id])
    @bike = Bike.find(params[:id])
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.update(bike_params)
    redirect_to edit_station_bike_path
  end

  def destroy
    @bike = bike.find(params[:id])
    @bike.destroy
    redirect_to bikes_path
  end

    private
  def bike_params
    params.require(:bike).permit(:serial_no, :bike_type, :model)
  end

  # if user.admin
  #   can :manage, Bike
  # end

end
