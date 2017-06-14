class UsersController < ApplicationController

  def index
    @users = Users.all

    redirect_to new_user_session_path
  end

private
  if user.admin
    can :manage, Bike, Station
  end
end
