class Ability
  include CanCan::Ability

  def initialize(user)

    def show
      @station = Station.find( params[:id] )
      authorize! :read, @station
    end

  end
end
