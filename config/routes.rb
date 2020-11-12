Rails.application.routes.draw do
  get 'businesses/show'
  namespace :api do
    namespace :v1 do
      resources :businesses, only: [:index, :create]
      resources :categories, only: [:index]
    end
  end
end
