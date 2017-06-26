Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "stations#index"

  # I like the way you've structured your routes overall, though I have a couple suggestions.

  resources :stations do
    resources :bikes
  end

  # I suggest the following...
  # resources :users do
  #   resources :userbikes
  # end

  resources :userbikes do
    # the line below might complicate your controller code. Consider the example below from your Userbikes controller...
    #       @bike = Bike.find(params[:bike_id])
    # @bike could end up referring to a Bike with the same id as a User
    resources :users, :bikes
  end

  # see my note in UserbikesController
  get '/userbikes/:bike_id/checkout' => 'userbikes#checkout'

end
