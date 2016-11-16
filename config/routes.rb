Rails.application.routes.draw do
  get 'trips/index'

  namespace :v1 do
    namespace :admin do
      resources :users, only: [:index, :create]
      resources :trips, except: [:show, :new, :edit]
    end
    resources :expenses, except: [:show, :new, :edit]
    resources :sessions, only: [:create, :destroy]
  end
end
