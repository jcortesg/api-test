Rails.application.routes.draw do
  namespace :v1 do
    namespace :admin do
      resources :users, only: [:index, :create]
    end
    resources :sessions, only: [:create, :destroy]
  end
end
