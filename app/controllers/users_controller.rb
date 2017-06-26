class UsersController < ApplicationController

  def index
    @users = User.all
    redirect_to new_user_session_path
  end

  def new
   @user = User.new
 end

  def create
    @user = User.find(params[:user_id])
    @bike = @user.bikes.create(bike_params)
    redirect_to new_user_bike_path(@user, @bike)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to root_path(@user)
  end

  private
    if current_user.admin # see my note in your admin model
      can :manage, Bike, current_user
    end
end
