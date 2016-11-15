Rails.application.routes.draw do
  namespace :v1 do
    get 'users/index'
  end
end
