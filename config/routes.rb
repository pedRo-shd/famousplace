Rails.application.routes.draw do
  namespace :api do
    namespace :vi do
      resources :places
    end
  end
end
