Rails.application.routes.draw do
  namespace :v1, defaults: { format: :json } do
    namespace :admin do
      resources :users, only: [:index, :create]
      resources :trips, except: [:show, :new, :edit]
    end
    resources :expenses, except: [:show, :new, :edit]
    resources :sessions, only: [:create, :destroy]
  end
end
