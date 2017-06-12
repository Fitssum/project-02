class BikesController < ApplicationController


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
    @bike = @station.bikes.create(params[:bike_id])
    redirect_to station_bikes_path(@station, @bike)
  end

  def show
    @bike = Bike.find(params[:id])
  end

end
