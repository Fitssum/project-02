class StationsController < ApplicationController

  def index
    @stations = Station.all
  end

  def new
   @station = Station.new
 end

  def create
    @station = Station.find(params[:station_id])
    @bike = @station.bikes.create(bike_params)
    redirect_to new_station_bike_path(@station, @bike)
  end

  def show
    @station = Station.find(params[:id])
  end

  def edit
    @station = Station.find(params[:id])
    if @user.admin
      authorize! :update, @station
      can :manage, Station
    end
  end

  def update
    @station = Station.find(params[:id])
    @station.update(station_params)
    authorize! :update, @station
      if @station.update( station_params )
        redirect_to @station
      else
        render :edit
      end
    redirect_to stations_path(@station)
  end

  def destroy
   @station = Station.find(params[:id])
   @station.destroy
   redirect_to stations_path
 end

 def add_userbikes
    @bike = bike.find(params[:id])
    @bike.userbikes.create(user: current_user)
    redirect_to :back
  end

 def remove_userbike
    userbike.find_by(user: current_user, bike_id: params[:id]).destroy
    redirect_to :back
  end

  private
  def station_params
    params.require(:station).permit(:station_name, :location, :photo_url)
  end

end
