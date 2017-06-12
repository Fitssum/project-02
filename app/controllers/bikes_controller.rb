class BikesController < ApplicationController

  def index
    @bikes = Bike.all
    @stationBikes = @bikes.find(params[:station_id])
  end
  
end
