class UserBikesController < ApplicationController

  def index
    @usersbikes = UserBike.all
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @bike = User.find(params[:user_id])
    @userbike = @bike.userbikes.create(userbike_params)
  end

  private
  def userbike_params
    params.require(:userbike).permit(:date_rented, :dt_returned, :user_id, :bike_id)
  end
end
