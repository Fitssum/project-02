class UserbikesController < ApplicationController

    def index
      @userbike = Userbike.find(params[:userbike_id])
      @bikes = @userbike.bikes
    end

    def new
     @userbike = Userbike.find(params[:userbike_id])
     @bike = @userbike.bikes.new
    end

    def create
      @userbike = Userbike.find(params[:userbike_id])
      @bike = @userbike.bikes.create(bike_params)
      redirect_to userbike_bikes_path(@userbike, @bike)
    end

    def show
      @bike = Userbike.find(params[:id])
      @bike = Bike.find(params[:id])
    end

    def edit
      @userbike = Userbike.find(params[:userbike_id])
      @bike = Bike.find(params[:id])
    end

    def update
      @bike = Bike.find(params[:id])
      @bike.update(bike_params)
      redirect_to edit_userbike_bike_path
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

  end
