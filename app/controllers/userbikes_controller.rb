class UserbikesController < ApplicationController

    def index
      @userbikes = Userbikes.all
      @userbike = Userbike.find(params[:userbike_id])
      @bikes = @userbike.bikes

    end

    def checkout
      @user = User.find_by(name: 'Fitssum Haile')
      @bike = Bike.find(params[:bike_id])
      @userbike = Userbike.new(user:@user, bike:@bike)

    end

    def new
     @userbike = Userbike.find(params[:userbike_id])
     @bike = @userbike.bikes.new
    end

    def create
      @user = User.find_by(name: 'Fitssum Haile')
      @bike = Bike.find(params[bike_params])
      @userbike = Userbike.create(user:@user, bike:@bike)
    end

    def show
      @bike = Userbike.find(params[:id])
      # @bike = Bike.find(params[:id])
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
