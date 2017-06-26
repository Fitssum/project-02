class UserbikesController < ApplicationController

  # create update and delete should have conditional error handling for failure

  def index
    @userbikes = Userbikes.all
    @userbike = Userbike.find(params[:userbike_id])
    @bikes = @userbike.bikes
  end

  # the action of checking out a bike would just be the create method, i think you're essentially
  # duplicating functionality here.
  # in theory, you wouldn't even need a form. You could just click a link to check out a bike
  # that would be shown if and only if the bike were available to be checked out.
  # The date/time when the bike would be checked out could be set at the time when the UserBike was created
  def checkout
    @user = User.find_by(name: 'Fitssum Haile') # this should just be current_user, and not a hard-coded value
    @bike = Bike.find(params[:bike_id])
    @userbike = Userbike.new(user:@user, bike:@bike)

  end

  def new
    @userbike = Userbike.find(params[:userbike_id])
    @bike = @userbike.bikes.new
  end

  def create
    @user = User.find_by(name: 'Fitssum Haile') # this should just be current_user, and not a hard-coded value
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
    # should be userbike_params
    # params.require(:userbike)
    # the arguments passed into .permit should be symbols that correspond to fields in your userbikes table (properties on your Userbikes model)

    # this instance var will not be defined in this separate method and create throws this error:
    # ActionController::ParameterMissing in UserbikesController#create, param is missing or the value is empty:

    params.require(@bike).permit(:serial_no, :bike_type, :model)
  end

end
