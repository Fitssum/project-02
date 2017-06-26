class Ability
  include CanCan::Ability

  def initialize(user)

    def show # this method should go in a controller
      @station = Station.find( params[:id] )
      authorize! :read, @station
    end

  end
end
# CanCanCan might be overkill
