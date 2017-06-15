Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "stations#index"

  resources :stations do
    resources :bikes
  end

  resources :userbikes do
    resources :users, :bikes
  end

  get '/userbikes/:bike_id/checkout' => 'userbikes#checkout'

end
